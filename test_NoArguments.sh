#!/bin/bash

echo -e "\n\n~~ Argument Test ~~"

echo -n "Testing no arguments - "

./maze > tmp

if grep -q "Usage: maze <filename>" tmp;
then 
    echo "Pass"
else
    echo "Fail"
fi
