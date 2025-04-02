#!/bin/bash


# Test wether the program would report error if the maze is too small

echo -e "\n~~ Small Maze Test ~~"

echo -n "Testing small maze - "

./maze maze_small.txt > tmp

if grep -q "Error:" tmp;
then 
    echo "Pass"
else
    echo "Fail"
fi

rm -f tmp;

