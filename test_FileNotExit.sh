#!/bin/bash


# Test wether the program would report error if the file don't exist

echo -e "\n~~ File Existence Test ~~"

echo -n "Testing file do not exist - "

./maze non_existence.txt > tmp

if grep -q "Error:" tmp;
then 
    echo "Pass"
else
    echo "Fail"
fi

rm -f tmp;

