#!/bin/bash


# Test wether the program would report error if the maze hasn't start point

echo -e "\n~~Invalid Maze Test ~~"

echo -n "Testing the maze without start point - "

./maze maze_NoStartPoint.txt > tmp

if grep -q "Error:" tmp;
then 
    echo "Pass"
else
    echo "Fail"
fi

rm -f tmp;

