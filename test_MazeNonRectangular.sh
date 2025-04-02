#!/bin/bash


# Test wether the program would report error if the maze is Non-Rectangular

echo -e "\n~~ Non-Rectangular Maze Test ~~"

echo -n "Testing Non-Rectangular maze - "

./maze maze_non_rectangular.txt > tmp

if grep -q "Error:" tmp;
then 
    echo "Pass"
else
    echo "Fail"
fi

rm -f tmp;

