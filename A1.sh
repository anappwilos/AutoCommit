#!/bin/bash/ 
#________________________________________________________________________________
#
#			confirmate_run
# This function verified if the user accept run in machine or not.
#
#________________________________________________________________________________
function confirmate_run() {
while true; 
do
	echo
	
	read -p "Can you run this script?" yn 

	case $yn in

y ) break;;
n ) exit;;
* ) echo "Enter y for YES or n for NOT";;

esac  

done

}

#________________________________________________________________________________
#
#				showMenu
# This function show the Menu this app.
#
#________________________________________________________________________________

function showMenu() {

echo -e =============Menu=============\\n
echo	1.- Only Folder
echo "> Enter 1 or 2 "
echo _______________________________

}

### Case 1: Only Folder
#________________________________________________________________________________
#
#			case_OnlyFolder
# This function created only the folder specificied by user.
#
#________________________________________________________________________________

function case_OnlyFolder() {

## Part-NameFolder
echo "Enter the name folder (Ex: MyFolder) :" 
read NFOLD					
echo "Enter the number repeat for your folders : (Ex: 10)" 
read NuF		
echo "Enter the number by folder";
read nF
mkdir $NFOLD 
for ((i=$nF;i<=$NuF;i++));
	do
		echo "$i"
		mkdir $NFOLD$i
		cd $NFOLD$i
		touch Readme.md
		git add ../$NFOLD$i
		git commit -m "AC-N$i : CR 'AC$i/'"
		cd ..
	done
showMenu
}

#________________________________________________________________________________
#
#				PROGRAM
#
#________________________________________________________________________________

confirmate_run 
clear
echo -e \\n\\t===============\\n\\t mkFile_number\\n\\t===============\\n ## Message WELCOME

showMenu

while :
do
	
read OPTION_MENU				#Option by user
case $OPTION_MENU in

1) echo "*********************OnlyFolder*********************";	#Option Only_Folder
case_OnlyFolder;;
*) echo "No validate" ;;
esac

done

