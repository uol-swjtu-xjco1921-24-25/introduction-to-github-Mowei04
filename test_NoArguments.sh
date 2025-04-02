#!/bin/bash


# Test wether the program would report if there is no argument

echo -e "\n~~ Argument Test ~~"

echo -n "Testing no arguments - "

./maze > tmp

if grep -q "Usage: maze <filename>" tmp;
then 
    echo "Pass"
else
    echo "Fail"
fi

rm -f tmp