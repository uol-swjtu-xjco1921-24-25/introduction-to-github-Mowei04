#!/bin/bash


# Test wether the program would report error if the maze is too large

echo -e "\n~~ Large Maze Test ~~"

echo -n "Testing large maze - "

./maze maze_large.txt > tmp

if grep -q "Error:" tmp;
then 
    echo "Pass"
else
    echo "Fail"
fi

rm -f tmp;

