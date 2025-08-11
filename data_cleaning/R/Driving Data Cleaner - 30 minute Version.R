getwd()
setwd("/Users/azamarripa/Desktop/Driving Simulator Data/drive_analyzer")
####    Setup    ####
#install.packages("dplyr")
#install.packages("tidyr")
#install.packages("stringr")
library(dplyr)
library(tidyr)
library(stringr)                    # used for str_squish only

running_as_test <- FALSE            # for debugging and testing, pass all hard-coded variables through if statement

if (running_as_test) {
  test_file_index <- 3            # for testing a specific file
  test_df_one <- df.Vehicle       # { df.Vehicle  df.Divided  df.sdlp1  df.sdlp2 }
  test_name_one <- "vc"           # { "vc"  "da"  "sdlp1" "sdlp2" }
  test_df_two <- df.AmberR        # { df.AmberR  df.AmberU  df.Stop }
  test_name_two <- "adR"          # { "adR"  "adU"  "stop" }
  test_df_three <- df.CrashEasy   # { df.CrashEasy  df.CrashMed  df.CrashHard }
  test_name_three <- "CA.E"       # { "CA.E"  "CA.M"  "CA.H" }
}

# set input folder
dirBase <- "drive_analyzer/"        # where r file is saved
dirIn <- "data_to_analyze/"         # where files to be analyzed are saved

# block information file names
dirBlockInfo <- "block_info/"       # where block_names.csv file is saved
fnColumnNames <- "column_names.csv" # name of csv file with block names
fnBlockOrder <- "block_order.csv"   # name of csv file with block order

# get list of files in dirIn 
#       will need to set working directory
inputFiles <- list.files(paste0(dirIn)) 

# get block order per drive type
#       will be used with df.ColumnNames in subset_blocks function
#       block_order.csv file:
#           - row 1 = "drivetype", "block1", "block2", ... 
#           - col 1 = drive types
#           - remaining cols = block names, in order of appearance, 
#               as entered into program, and  
#               must follow variable naming conventions for R 
#           - no empty cells
df.BlockOrder <- read.csv(paste0(dirBlockInfo, fnBlockOrder), header = TRUE, 
                          stringsAsFactors = FALSE, row.names = 1)

# get names and column headers for each block 
#       will be used in subset_blocks function
#       blocknames.csv file:
#           - row 1 = "blockName", "var1", "var2", ... 
#           - col 1 = block names as entered into program
#           - remaining cols = col names, with no duplicates across rows and
#               must follow variable naming conventions for R 
#           - empty cells = "#N/A"
df.ColumnNames <- read.csv(paste0(dirBlockInfo, fnColumnNames), header = TRUE, 
                           stringsAsFactors = FALSE, row.names = 1, na.strings = "#N/A")
df.ColumnNames$non_na <- apply(!is.na(df.ColumnNames), 1, sum)  # counts # of non-na cols per row

####    Prepare Output    ####

# prepare output
df.out <- data.frame(NULL)              # empty data frame that output data will be added to
dirOut <- "analysis_summary/"           # folder to save output 
# create new output folder if one does not already exist
if (!dir.exists(dirOut)) {
  dir.create(dirOut)
} 

fnOut <- paste0("Drive-Summary_", Sys.Date())   # base output file name
filepathOut <- paste0(dirOut, fnOut, ".csv")    # full output file path including name

# append "copy" to file name if it already exists
# prevents overwriting files
while(file.exists(filepathOut)){
  fnOut <- paste(fnOut, "copy", sep = "_")
  filepathOut <- paste0(dirOut, fnOut, ".csv")
}


####    Cleaning Functions    ####

# Get Info 
#       Purpose:
#           parse file names to get session info variables    
#       Arguments: 
#           df.read: raw data file; file name string
#       Output:
#           data frame with the following columns: 
#                   study code, participant id, session #, 
#                   hour # (which hour whithin the session the drive occurred)
#                   drive type, date, time

get_info <- function(df.read, fnIn) {
  
  # date
  date.row <- grep("Date:", df.read$value)[1]
  date <- gsub(".*: ", "", df.read[date.row, "value"])
  
  # time
  time.row <- grep("Time:", df.read$value)[1]
  time <- gsub(".*: ", "", df.read[time.row, "value"])
  
  # study info:
  fnIn <- gsub('.{4}$', '', fnIn)     # remove '.csv' from string
  df.fn <- data.frame(fnIn)         # needs to be in data frame format to use separate 
  colnames <- c("study", "pid", "session", "hr", "driveType")
  df.info <- df.fn %>% separate(fnIn, colnames, "_")
  df.info$driveType <- toupper(df.info$driveType)
  df.info$date <- date         # note: stored as char
  df.info$time <- time         # note: stored as char
  
  return(df.info)
  
}

# Get Summary
#       Purpose: 
#           Get 3 types of summary variable groups, located at bottom of file:
#               car following task (1 row of data)
#               divided attention (secondary task) results (20 rows of data)
#               driver mistakes (19 rows of data)
#       Arguments: 
#           df.read raw data file
#       Output:
#           data frame with the following columns: 
#               [to complete]

get_summary <- function(df.read) { 
  
  # find starting row numbers for each variable group
  carFollow.row <- grep("1 Car following task", df.read$value)[1]
  secondaryTask.row <- grep("Secondary task results", df.read$value)[1]
  
  
  driverMistakes.row <- grep("Driver mistakes:", df.read$value)[1]
  
  # get data and clean into data frame for each variable group
  
  ## car following 
  
  df.carFollow <- df.read[(carFollow.row + 1), ]
  df.carFollow <- data.frame(df.carFollow)
  colnames <- c("car_follow_modulus", "car_follow_delay", "car_follow_coherence", "car_follow_rawpoints", "car_follow_warnings")
  df.carFollow <- df.carFollow %>% separate(df.carFollow, colnames, " ")
  df.carFollow <- df.carFollow[ , c(1, 2, 3, 5)] # note: raw points not needed for final summary
  
  ## divided attention
  
  df.secondaryTask <- df.read[(secondaryTask.row + 1):(secondaryTask.row + 20), ]
  df.secondaryTask <- data.frame(df.secondaryTask)
  colnames <- c("direction", "response", "reaction.time", "location")
  df.secondaryTask <- df.secondaryTask %>% separate(df.secondaryTask, colnames, " ")
  
  # calculate percent correct on divided attention response
  nCorrect <- sum(df.secondaryTask$response == 0)
  divided.attention.pctCorrectResponse <- nCorrect / length(df.secondaryTask$response) * 100
  
  # calculate average reaction time on divided attention
  #   excludes values <= 5
  rtime <- as.numeric(df.secondaryTask$reaction.time)
  divided.attention.avgReactionTime <- mean(rtime[which(rtime < 5)])
  
  ## driver mistakes
  
  driver.mistakes <- df.read[(driverMistakes.row +1):(driverMistakes.row + 19), 1]
  dm <- data.frame(driver.mistakes)
  colnames <- c("variable", "value")
  df.driver.mistakes <- dm %>% tidyr::separate(driver.mistakes, colnames, " = ")
  df.driver.mistakes$variable <- trimws(gsub("Total number of", "", df.driver.mistakes$variable))
  
  # parse driver-mistakes speed variables (% time, % distance)
  df.speed <- df.driver.mistakes[18:19, ]
  df.speed <- data.frame(df.speed)
  df.speed$variable <- gsub(" *\\(.*", "", df.speed$variable)
  colnames <- c("pctTime", "pctDist")
  df.speed <- df.speed %>% tidyr::separate(value, colnames, sep = " ")
  
  # split driver-mistakes speed vars (created above) into separate data frames
  #       overSL  (by pctTime and pctDistance)
  #       outLane (by pctTime and pctDistance)
  df.overSL <- df.speed[1 , 2:3]  
  colnames(df.overSL) <- c("overSL.pctTime", "overSL.pctDist")
  df.outLane <- df.speed[2, 2:3]  
  colnames(df.outLane) <- c("outLane.pctTime", "outLane.pctDist")
  
  # parse driver-mistakes total-time variables 
  #       (drive time, xT, total time)
  df.totaltime <- df.driver.mistakes[14, ]
  df.totaltime <- data.frame(df.totaltime)
  df.totaltime$variable <- gsub(" *\\(.*", "", df.totaltime$variable)
  colnames <- c("driveT", "xT", "totalT")
  df.totaltime <- df.totaltime %>% tidyr::separate(value, colnames, sep = " ")
  
  # remove the rows and sections with:
  #       - multiple data points within a single column (i.e., ones parsed above)
  #       - unneeded data (i.e., DA responses)
  df.driver.mistakes <- df.driver.mistakes[-c(11:14, 18:19), ] 
  
  # transpose data frame    
  #      - column 1 becomes colnames
  #      - column 2 becomes values
  tdf.driver.mistakes = setNames(data.frame(t(df.driver.mistakes[,-1])), df.driver.mistakes[,1])
  
  # prepare data for output
  
  # combine all cleaned variables into a single data frame    
  df.return <- cbind(tdf.driver.mistakes,
                     df.overSL, 
                     df.outLane,
                     df.totaltime[4],
                     df.carFollow,
                     divided.attention.pctCorrectResponse,
                     divided.attention.avgReactionTime) 
  
  df.return <- lapply(df.return, as.numeric)      # convert all columns to numeric
  rownames(df.return) <- NULL                     # remove row names
  
  return(df.return)
}

# Get Block Metadata
#       Purpose: 
#           - remove header from df.read
#           - get row information to be used in subset_blocks
#       Arguments: 
#           - df.read raw data file
#       Output:
#           - df data frame with header removed
#           - block.rows, block.numbers, block.length, block.names

get_block_metadata <- function(df.read) {                        
  
  # remove header rows that precede block 1 data
  block.1.row <- grep("Block #", df.read$value)[1]    
  df <- as.data.frame(df.read[block.1.row:nrow(df.read), ])
  colnames(df)[1] <- "value"  
  
  # find row number that each block starts on
  block.rows <- grep("Block #", df$value)
  
  # get total number of blocks
  nBlocks <- length(block.rows)
  
  # get length and name for each block
  block.numbers <- trimws(gsub(":.*$", "", df[block.rows, "value"]))
  block.length <- as.numeric(gsub(".*,", "", df[block.rows, "value"]))
  
  # find block names, taking middle of string
  #       ^.*:    gets start of string up to and including colon and 3 spaces
  #       ([^-]*)  is middle of string (not sure how this works, but it does)
  #       ,.*$     gets end of string starting at comma
  #       "\\1"    ¯\_(ツ)_/¯ || gets rid of start and end of string
  
  block.names <- gsub("^.*:([^-]*)", "\\1", df[block.rows, "value"])
  block.names <- gsub("([^-]*),.*$", "\\1", block.names)
  block.names <- trimws(block.names)
  
  return(list("block.rows"    =   block.rows, 
              "block.numbers" =   block.numbers, 
              "block.length"  =   block.length, 
              "block.names"   =   block.names,
              "df"            =   df))
  
}

# Subset Blocks
#       Purpose: 
#           - subset data into separate data frames
#       Arguments: 
#           - df.read raw data file
#       Output:
#           - n unique data frames, where n = number of blocks

subset_blocks <- function(df, block.rows, block.length, driveType) {
  
  nBlocks <- length(block.rows)  
  
  # create a separate dataframe for each block
  for (i in 1:nBlocks) {   
    blockStart <- block.rows[i] + 1                 # +1 is added to remove false headers
    blockEnd <- blockStart + block.length[i] - 1    # -1 balances the +1 from previous line
    assign(paste0("df.", i), data.frame(df[blockStart:blockEnd, ]))
  }
  
  # split data into separate columns
  for (i in 1:nBlocks) {
    
    # get column names and save to temp.colNames
    temp.BlockName <- df.BlockOrder[driveType, i]                    # get block type for drive type
    temp.nCols <- df.ColumnNames[temp.BlockName, "non_na"]          # get n columns for block type
    
    temp.ColNames <- as.character(
      df.ColumnNames[temp.BlockName, 1:temp.nCols])       # save column names
    
    # create variable, temp.dfname that will be used to assign 
    # a dataframe name specific to block type
    temp.dfname <- i
    switch(temp.BlockName,
           "Vehicle Control"           = {temp.dfname <- "Vehicle"}, 
           "Divided Attention Task"    = {temp.dfname <- "Divided"}, 
           "Baseline SDLP Measure"     = {temp.dfname <- "sdlp1"}, 
           "SDLP 2-Lane Baseline"      = {temp.dfname <- "sdlp2"}, 
           "Amber Dilemma Rural"           = {temp.dfname <- "AmberR"}, 
           "Amber Dilemma Urban"           = {temp.dfname <- "AmberU"}, 
           "Stop Light Reaction"       = {temp.dfname <- "Stop"}, 
           #"Crash Avoidance Easy"      = {temp.dfname <- "CrashEasy"}, 
           "Crash Avoidance Medium"    = {temp.dfname <- "CrashMed"}, 
           #"Crash Avoidance Hard"      = {temp.dfname <- "CrashHard"}
           )
    
    # separate the "value" column using " " as a separator and temp.headers for new column names
    #       "assign" and "get" are used as part of for loop 
    #       think of it as: df.i <- df.i %>% [...] 
    assign(paste0("df.", temp.dfname), 
           get(paste0("df.", i)) %>% 
             tidyr::separate(1, temp.ColNames, sep = " ")
    )
  }
  
  return(list(
    "df.Vehicle"    =   df.Vehicle,
    "df.Divided"    =   df.Divided,
    "df.sdlp1"      =   df.sdlp1,
    "df.sdlp2"      =   df.sdlp2,
    "df.AmberR"     =   df.AmberR,
    "df.AmberU"     =   df.AmberU,
    "df.Stop"       =   df.Stop,
    #"df.CrashEasy"  =   df.CrashEasy,
    "df.CrashMed"   =   df.CrashMed
    #"df.CrashHard"  =   df.CrashHard
    ))
  
}

####    Math Functions    ####

level_one_stats <- function(data, name = "NA") {
  
  if (running_as_test) {      # can ignore; kept for testing and debugging only
    data <- test_df_one
    name <- test_name_one
  }
  
  df <- as.data.frame(lapply(data, as.numeric))
  
  # lateral position standard deviation
  lp <- df$lateralPosition
  lateral_position.sd <- sd(lp) * 30.48     # converted to cm
  
  # speed in mph
  mph <- df$mph
  mph.avg <- mean(mph)
  SDSP_mph <- sd(mph)
  
  # speed in km/h
  kmph <- mph * 1.60934
  kmph.avg <- mean(kmph)
  SDSP_kmph <- sd(kmph)
  
  df.return <- cbind(
    lateral_position.sd,
    #mph.avg,
    SDSP_mph,
    #kmph.avg,
    SDSP_kmph
  )
  
  if (name == "VC") {
    df.return <- data.frame(lp.sd)
  }
  
  rownames(df.return) <- NULL
  modifier <- rep(name, ncol(df.return))
  colnames(df.return) <- paste(modifier, colnames(df.return), sep = "_")
  
  return(df.return)
  
}


level_two_stats <- function(data, name = "NA") {
  
  if (running_as_test) {      # can ignore; kept for testing and debugging only
    data <- test_df_two
    name <- test_name_two
  }
  
  fun_name <- "level_two_stats"       # used for passing error codes
  ms1 <- paste0("Warning for: ", fnIn)
  ms2 <- paste0(" -Block type = ", name)
  ms3 <- paste0(" -Function = ", fun_name, "\n")
  warning_message <- paste(ms1, ms2, ms3, sep = "\n")   
  
  df <- as.data.frame(lapply(data[, 1:8], as.numeric))
  
  # identify rows by for each light color
  rowsGreen <- which(df$lightStatus == 1)
  rowsAmber <- which(df$lightStatus == 2)
  rowsRed <- which(df$lightStatus == 3)    
  # potentially add try--catch here for if nrows for any == 0
  
  # subset data
  dfAmber <- df[rowsAmber, ]      # only while light is amber
  dfBrake <- df[-rowsGreen, ]     # amber or red
  
  # did they run the light? 
  ranLight <- !any(which(df[rowsRed, "mph"] == 0))       
  
  
  # light-change time
  amberStart.time <- dfBrake$time[1]      
  amberStart.gas <- dfBrake$pctGas[1]    # record time and percent gas when light first turns amber
  
  boolHitBrake <- any(which(dfBrake$pctBrake > .1))
  boolChangeGas <- any(which(abs(dfBrake$pctGas - amberStart.gas) > 0.1))
  
  if (boolHitBrake | boolChangeGas) {
    
    # find row where either brake>10%, or pctGas changes by > .1 from start.gas 
    amberEvent.row <- min(which(dfBrake$pctBrake > 0.1   |    
                                  abs(dfBrake$pctGas - amberStart.gas) > 0.1))
    amberEvent.time <- dfBrake$time[amberEvent.row]    # time when a reaction event occurred 
    amberRT <- amberEvent.time - amberStart.time      # reaction time in seconds
    
  } else {
    amberRT <- NA
    message(warning_message)
  }
  
  df.return <- cbind(
    ranLight,
    amberRT
  )
  
  # for stop-light-reaction block only
  if (name == "stop light reaction") {
    rowsRestart <- rowsGreen[rowsGreen > max(rowsRed)] # when light turns from red to green
    dfRestart <- df[rowsRestart, ]  # only green light following a red
    greenStart.time <- dfRestart$time[1]
    
    # braking reaction time (may be same as amber)
    if (boolHitBrake) {
      brakeEvent.row <- min(which(dfBrake$pctBrake > 0.1))
      brakeEvent.time <- dfBrake$time[brakeEvent.row]    # time when a reaction event occurred 
      brakeRT <- brakeEvent.time - amberStart.time
    } else {
      brakeRT <- NA
      message(warning_message)
    }
    
    if (!ranLight) {
      gasEvent.row <- min(which(dfRestart$pctGas > .05))
      gasEvent.time <- dfRestart$time[gasEvent.row]
      gasRT <- gasEvent.time - greenStart.time
    } else {
      gasRT <- NA
    }
    
    df.return <- cbind(
      df.return,
      brakeRT,
      gasRT
    )
    
  }
  
  rownames(df.return) <- NULL
  modifier <- rep(name, ncol(df.return))
  colnames(df.return) <- paste(modifier, colnames(df.return), sep = "_")
  
  return(df.return)
  
}


level_three_stats <- function(data, name = "NA") {
  
  if (running_as_test) {      # can ignore; kept for testing and debugging only
    data <- test_df_three
    name <- test_name_three
  }
  
  # 
  df <- as.data.frame(lapply(data, as.numeric))
  
  # get row when object starts moving
  objStart.row <- min(which(abs(df$objSpeed) > 0.01))
  # remove all rows before object starts moving
  dfObj <- df[objStart.row:nrow(df), ]
  objStart.time <- dfObj$time[1] # time when object starts moving
  
  # brake reaction time 
  
  # get row and time when brake > .3
  brakeEvent.row <- min(which(dfObj$pctBrake > 0.3))
  brakeEvent.time <- dfObj$time[brakeEvent.row]
  
  brakeRT <- brakeEvent.time - objStart.time   
  
  # swerve reaction time
  
  # did a swerve occur?    
  swerved <- any(which(dfObj$wheelInput <= 30000)) 
  
  if (swerved) {
    
    # get row and time when swerve occurs (wheelInput <3000)
    swerveEvent.row <- min(which(dfObj$wheelInput <=30000))
    swerveEvent.time <- dfObj$time[swerveEvent.row]
    swerveRT <- swerveEvent.time - objStart.time
    
  } else {swerveRT <- NA}
  
  # time to collision
  
  ft <- dfObj$distanceRoad[brakeEvent.row]
  ftSec <- dfObj$ftPerSec[brakeEvent.row] # distance is car to pt where object will cross road
  TTC <- ft / ftSec       # time to collision
  
  # RT
  RT <- min(c(brakeRT, swerveRT), na.rm = TRUE)
  
  # collision
  
  # get collision input value at start of event
  cv <- dfObj$collision[1]
  
  # did any collision occur?
  collisionAny <- any(which(dfObj$collision > cv))
  
  if (collisionAny) {
    
    collide <- 0
    
    for (i in 1:nrow(dfObj)){
      temp.cv <- dfObj$collision[i]
      delta.cv <- temp.cv - cv
      # if collision with vehicle (1) or car (3), set collision value == 1
      if ((delta.cv == 1) | delta.cv == 3) {
        collide <- 1
      }
      
      # if any change in collision value, update the value
      if (delta.cv > 0) {
        cv <- temp.cv
      }
      
    }
    
  } else {collide <- 0}
  
  
  df.return <- cbind(
    TTC,
    RT,
    collide
    #brakeRT
    #swerveRT
  )
  
  rownames(df.return) <- NULL
  modifier <- rep(name, ncol(df.return))
  colnames(df.return) <- paste(modifier, colnames(df.return), sep = "_")
  
  return(df.return)
  
}

####    File Loop    ####

# Purpose: execute utility functions for each file in directory
#       run data analysis & return single line of data 
#       per file, which will be saved into summary sheet

for (i in 1:length(inputFiles)){
  
  if (running_as_test) {
    i <- test_file_index                 # keep in place for testing; remove at runtime
  }
  
  # read in data for a single file
  fnIn <- inputFiles[i]                   # select a file name from list
  filepathIn <- paste0(dirIn, fnIn)       # full file path including name
  
  # read csv file
  #       will return unformatted data frame, with all data in single column
  df.read <- read.csv(filepathIn, header = FALSE, sep = "\t", quote = "\"", 
                      dec = ".", fill = TRUE, comment.char = "")
  
  # prepare data for cleaning
  colnames(df.read)[1] <- "value"         # set column name, for use in other functions   
  df.read$value <- trimws(df.read$value)  # remove extra white space from 'value' column
  df.read$value <- stringr::str_squish(df.read$value) # for parsing columns with separate()
  
  # run get_info function to get basic session info variables 
  df.info <- get_info(df.read, fnIn)      # returns single-row df with relevant variables
  driveType <- df.info$driveType          # will be used to specify block orders
  
  # run get_summary function to pull relevant variables from bottom of data file
  df.summary <- get_summary(df.read)      # returns single-row df with relevant variables
  
  # run metadata function to get information about where blocks, for subsetting 
  block.metadata <- get_block_metadata(df.read)   # returns list of variables
  # set variables pulled from get_block_metadata function into this environment
  # variables will be passed into the subset_blocks function 
  for(i in 1:length(block.metadata)) {
    assign(names(block.metadata)[i], block.metadata[[i]])   
  }
  
  # run subset_blocks function to break each block into separate data frame
  all.blocks <- subset_blocks(df, block.rows, block.length, driveType)
  # set dfs pulled from subset_blocks function into this environment
  # dfs will be passed into the math functions
  for(i in 1:length(all.blocks)) {
    assign(names(all.blocks)[i], all.blocks[[i]])
  }
  
  # will need to run for loop to save variables as different names
  vc.stats <- level_one_stats(data = df.Vehicle, name = "car follow task")      
  da.stats <- level_one_stats(data = df.Divided, name = "divided attention")
  sdlp1.stats <- level_one_stats(data = df.sdlp1, name = "sdlp 1 lane")
  sdlp2.stats <- level_one_stats(data = df.sdlp2, name = "sdlp 2 lane")
  
  amberR.stats <- level_two_stats(data = df.AmberR, name = "amber dilemma rurel")
  amberU.stats <- level_two_stats(data = df.AmberU, name = "amber dilemma urban")
  stop.stats <- level_two_stats(data = df.Stop, name = "stop light reaction")
  
  #crashEasy.stats <- level_three_stats(data = df.CrashEasy, name = "Crash avoidance easy")
  crashMed.stats <- level_three_stats(data = df.CrashMed, name = "Crash avoidance medium")
  #crashHard.stats <- level_three_stats(data = df.CrashHard, name = "Crash avoidance hard")
  
  output.row <- cbind(
    df.info, 
    df.summary,
    vc.stats, 
    da.stats,
    sdlp1.stats, 
    sdlp2.stats, 
    #crashEasy.stats,
    crashMed.stats,
    #crashHard.stats,
    amberR.stats, 
    amberU.stats, 
    stop.stats)
  
  df.out <- rbind(df.out, output.row)
  
}

df.out <- df.out %>% relocate("car follow task_lateral_position.sd":"car follow task_SDSP_kmph", .before = car_follow_modulus)
df.out <- df.out %>% relocate("divided attention_lateral_position.sd":"divided attention_SDSP_kmph", .before = divided.attention.pctCorrectResponse)


####    Write Output    ####

write.csv(df.out, file = filepathOut, row.names = FALSE)




