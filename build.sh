#!/bin/bash

#really simple script to build latex files cause I was tired of
#typing two commands everytime to build one latex file. Besides
#I didn't had a pratical way to build more than one file.

read -p "Build (A)ll LaTeX files or just (O)ne?(A/O) " choice  

if [ $choice == "A" ]; then
    for file in *.tex 
    do
        latex $file
        dvi_file=$(echo $file | cut -d"." -f 1)
        dvipdf $dvi_file".dvi"
    done

elif [ $choice == "O" ]; then
    read -p "Whats the name of the .tex file?(With the .tex) " file
    latex $file
    dvi_file=$(echo $file | cut -d"." -f 1)
    dvipdf $dvi_file".dvi"

else
    echo "Not a valid option"
    exit
fi

echo "DONE"
