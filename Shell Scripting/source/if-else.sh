#!/bin/bash

# This script demonstrates conditional statements

read -p "Enter a number: " num

if [ $num -gt 10 ]; then
    echo "The number is greater than 10"
else
    echo "The number is less than or equal to 10"
fi
