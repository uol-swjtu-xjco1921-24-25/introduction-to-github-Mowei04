#!/bin/bash


# Test wether the program would report error if there are extra inputs

echo -e "\n~~ Extra Arguments Test ~~"

echo -n "Testing extra arguments - "

./maze valid_maze.txt extra_maze.txt > tmp

if grep -q "Error:" tmp;
then 
    echo "Pass"
else
    echo "Fail"
fi

rm -f tmp;

