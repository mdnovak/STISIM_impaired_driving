Driving Data Cleaning Standard Operating Procedure

Driving files and drives were programmed by Austin Zamarripa (). For driving-specific questions please contact him at his listed email. The driving script needed to clean drives was created by Matt D. Novak and Austin Zamarripa – for questions, please contact ().

Prior to using script, make sure you have the following items in place

Make sure you have R and R studio Downloaded to your computer

Make sure you have the following packages downloaded:

dplyr

tidyr

stringr

If you don’t, the way to install will be in the script. To do so:

Remove the “#” in front of #install.packages(PACKAGENAME)

Highlight “install.packages(PACKAGENAME)” and run

When you have done this once, you can either 1) delete it, or 2) add the “#” back to prevent R from reading this line again

Make sure you change the desktop to match your computers main file path

Copy the following “Driving Simulator Information” from the Flash Drive Memorex to your desktop.

This will give you this SOP, and the folders, and files needed for any future start up. The main files you need are in the “drive_analyzer” folder.

analysis_summary

block_info

data_to_analyze

old_data

I recommend this folder for adding the old study data, and placing into the correct study identifiers (e.g., 2106 for 2106 data).

To clean driving data

When a person completes their study, download all of their .csv files to a USB. Do not download the plb files, you will only need the .csv files.

plb are playback files and can mess up the script.

Make sure all files are appropriately named as “Study_Participant_Session_Timepoint_DriveIdentifer”. See notes below for possible issues this creates.

Every issue I run into clean these data come from this mistake.

“Study” is the name you call your study (e.g., 2106)

“Participant” is their unique identifier (e.g., AZ13)

“Session” is just the session they are on (e.g., Session 4, or simply “4”). For single sessions, or between subject designs, use 1. You will always need a value here

“Timepoint” is the timepoint being assessed (e.g., BL or 1hr)

“DriveIdentifer” is the actual drive you do (e.g., 4A). This tells the script how to clean your file and which specific drives. If this is wrong, it may not work and clean your file, and all the other files in the folder. This is the most common error!

Place all of the driving data in the “data_to_analyze” folder. The R script will pull these files and clean them. You can clean as many participants are you want.

When all of the files are in the correct folder, run the script. You do this by highlighting the whole script and pressing “Command + Return”.

If this breaks, you will know immediately because no output file will be generated. If these files do not clean, contact Austin Zamarripa (czamarr2@jhmi.edu)

When this happens, a new file will be created in the analysis_summary folder. This will be labeled as the date+Summary.csv. If you clean multiple times, it will save each version with the words “copy” behind each new time.

When you have run the Script, open the Drive Summary file and begin inspecting the outcomes. For the most part, nothing should ever change. You may see some NAs listed in some categories but those are okay to ignore.

For ease, I recommend opening the file with excel to make the transfer to the master file easier.

NAs are generated when participants did not meet the standards of that task. Most often this is seen with the amber dilemmas because a participant did not change their behaviors.

Copy all of the driving data, and add it to your master file as is.

Possible reasons for errors. This list will be evergrowing. Some solutions are not easy to fix.

The files are not named correctly. Verify the individual files are labeled correctly with the format of Study_Participant_Session_Timepoint_Drive File.

The participant performed undirected driving behaviors (e.g., turning when not prompted to). These can interfere with specific driving outputs with the R Script. I tried to make this script ignore these instances but I can only update it when I see unique behaviors that aren’t captured in the data-cleaning process. If this happens, contact Austin Zamarripa