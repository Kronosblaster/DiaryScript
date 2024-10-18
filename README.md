# DiaryScript
Simple linux script for generating a day's diary entry folder.

## Usage
1. Download the file from the repo with the extremely complicated command:
```
  git clone https://github.com/Kronosblaster/DiaryScript.git
```
3. Feel free to rename the folder to whatever you like and copy it to wherever you want
4. Open the folder in terminal to give executable permissions to our bash script:
 ```
  cd ./DiaryScript/Diary/
  sudo chmod +x ./newday.sh
```
5. Run the bash script to generate the day's diary entry folder.

## What you get
When this script is run you get a new folder titled with the current month and year. It will contain a Log.txt where the month's diary entries are stored. Each new run adds the current date to the Log.txt. Additionally a pics folder is created to add the month's pictures.
