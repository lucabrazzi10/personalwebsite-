#!/bin/bash


# echo "Lottery number Generator" 


#add a word
# # sleep 2

<<<<<<< HEAD
# # sleep 2

=======
>>>>>>> 3302de000a549ddcbf91140553565fd2a4eaa4f1
# # echo $RANDOM

# # sleep 1

# echo $(($RANDOM % 48 + 1))
# sleep 0.5s
# echo $[ $RANDOM % 40 + 9]
# sleep 0.5s
# echo $[ $RANDOM % 45 + 4]
# sleep 0.5s
# echo $[ $RANDOM % 30 + 19]
# sleep 0.5s
# echo $[ $RANDOM % 20 + 29]
# echo Powerball Number 
# sleep 1
# echo -e "\e[0;32m$[ $RANDOM % 10 + 30]\e[0m" #add color to code!!!! to green 32m


# sleep 1
# echo Goodluck

# echo ........

# echo :)




#!/bin/bash

# Generate a random number between 1 and 49
function generate_number {
  echo $((1 + RANDOM % 49))
}

# Initialize an array to store the numbers
numbers=()

# Generate six random numbers and store them in the array
while [ ${#numbers[@]} -lt 6 ]; do
  number=$(generate_number)
  if [[ ! " ${numbers[@]} " =~ " ${number} " ]]; then
    numbers+=("$number")
  fi
done

# Print the array of numbers
echo "The numbers are: ${numbers[@]}"
