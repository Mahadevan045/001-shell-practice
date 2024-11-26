#!/bin/bash


#index starts from 0 and size is 3
FRUITS=("APPLE" "KIWI" "ORANGE") #way to define array

echo "First fruit is ${FRUITS[0]}"
echo "Second fruit is ${FRUITS[1]}"
echo "Third fruit is ${FRUITS[2]}"
echo "All fruits is ${FRUITS[@]}"