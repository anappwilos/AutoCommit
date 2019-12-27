#!/bin/sh
#________________________________________________________________________________
#
#			                        D1
# Programa que crea y elimina carpetas para la generación de commits
#
#________________________________________________________________________________
echo "Enter the name folder (Ex: MyFolder) :" 
read NFLD					
echo "Enter the number repeat for your folders : (Ex: 10)" 
read NuF		
echo "Enter the number by folder";
read nF
for ((i=$nF;i<=$NuF;i++));
do
    touch $NFLD$i
    git add $NFLD$i
    git commit -m "+ 'A$i/'"
    rm -rf $NFLD$i
    git add $NFLD$i
    git commit -m "- 'A$i/'"	
done