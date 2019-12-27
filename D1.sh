#!/bin/sh/ 
echo "Enter the name folder (Ex: MyFolder) :" 
read NFLD					
echo "Enter the number repeat for your folders : (Ex: 10)" 
read NuF		
echo "Enter the number by folder";
read nF
for ((i=$nF;i<=$NuF;i++));
do
    mkdir $NFLD$i
    cd $NFLD$i
    touch R
    git add ../$NFLD$i
    git commit -m "A-N$i : CR 'A$i/'"
    cd ..
    rm -rf $NFLD$i
    git add $NFLD$i
    git commit -m "A-N$i : Del 'A$i/'"	
done

