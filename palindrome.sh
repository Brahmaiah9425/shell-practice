#!/bin/bash

read -p "Enter a string: " text
reversed_text=$(echo "$text" | rev)

if [ "$text" == "$reversed_text" ]; then
  echo "Palindrome"
else
  echo "Not a Palindrome"
fi
