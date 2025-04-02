#!/bin/bash


# Test wether the program would report error if the maze hasn't end point

echo -e "\n~~Invalid Maze Test ~~"

echo -n "Testing the maze without end point - "

./maze maze_NoEndPoint.txt > tmp

if grep -q "Error:" tmp;
then
    echo "Pass"
else
    echo "Fail"
fi

rm -f tmp;

