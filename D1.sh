#!/bin/sh/ 
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
		mkdir $NFOLD$i
		cd $NFOLD$i
		touch Readme.md
		git add ../$NFOLD$i
		git commit -m "AC-N$i : CR 'AC$i/'"
		cd ..
done

