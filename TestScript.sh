#!/bin/bash


# Test wether the program would report if there is no argument

echo -e "\n\n~~ Argument Test ~~"

echo -n "Testing no arguments - "

./maze > tmp

if grep -q "Usage: maze <filename>" tmp;
then 
    echo "Pass"
else
    echo "Fail"
fi

# Test wether the program would report error if the file don't exist
echo -n "Testing file do not exist - "

./maze non_existence.txt > tmp

if grep -q "Error:" tmp;
then 
    echo "Pass"
else
    echo "Fail"
fi

# Test wether the program would report error if there are extra inputs

echo -n "Testing extra arguments - "

./maze valid_maze.txt extra_maze.txt > tmp

if grep -q "Error:" tmp;
then 
    echo "Pass"
else
    echo "Fail"
fi




# Test wether the program would report error if the maze is too small

echo -e "\n\n~~ Maze Test ~~"

echo -n "Testing small maze - "

./maze maze_small.txt > tmp

if grep -q "Error:" tmp;
then 
    echo "Pass"
else
    echo "Fail"
fi


# Test wether the program would report error if the maze is too large

echo -n "Testing large maze - "

./maze maze_large.txt > tmp

if grep -q "Error:" tmp;
then 
    echo "Pass"
else
    echo "Fail"
fi


# Test wether the program would report error if the maze is Non-Rectangular

echo -n "Testing Non-Rectangular maze - "

./maze maze_non_rectangular.txt > tmp

if grep -q "Error:" tmp;
then 
    echo "Pass"
else
    echo "Fail"
fi


# Test wether the program would report error if the maze hasn't start point

echo -n "Testing the maze without start point - "

./maze maze_NoStartPoint.txt > tmp

if grep -q "Error:" tmp;
then 
    echo "Pass"
else
    echo "Fail"
fi


# Test wether the program would report error if the maze has invalid character

echo -n "Testing the maze with Invalid Character - "

./maze maze_InvalidCharacter.txt > tmp

if grep -q "Error:" tmp;
then
    echo "Pass"
else
    echo "Fail"
fi

rm -f tmp