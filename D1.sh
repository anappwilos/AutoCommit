#!/bin/sh/ 
echo "Enter the name folder (Ex: MyFolder) :" 
read NFOLD					
echo "Enter the number repeat for your folders : (Ex: 10)" 
read NuF		
echo "Enter the number by folder";
read nF
for ((i=$nF;i<=$NuF;i++));
do
	mkdir $NFOLD$i
	cd $NFOLD$i
	touch R
	git add ../$NFOLD$i
	git commit -m "AC-N$i : CR 'AC$i/'"
	cd ..
	rm -rf $NFOLD$i
	git add $NFOLD$i
	git commit -m "AC-N$i : Del 'AC$i/'"
		
done

