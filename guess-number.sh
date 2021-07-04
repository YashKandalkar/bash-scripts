#!/bin/bash

echo "Enter you fantasic name!"

read name

echo "Hello, $name!"


num=$RANDOM
guesses=14

# between 0 and 100
((num %= 100))

echo -e "\nI am going to select a number between 0 to 100, and you have to guess
it, within 15 tries!\nBut do not worry, I am going to help you with how close your guess
was!\nReady?\n\nEnter your guess:"

read guess
echo $guess

while [ $num -ne $guess ] && [ $guesses -gt 0 ]
do
  ((guesses-=1))

  if [ $num -gt $guess ]
  then
    echo "Your guess is too low!"

  elif [ $num -lt $guess ]
  then
    echo "Your guess is too high!"
  fi

  echo "Enter your guess:"
  read guess
done

if [ $num -eq $guess ]
then 
  echo -e "Your guess is correct!\nYou took $((15-guesses)) tries to get it correct :D"
else
  echo -e "Aww, you couldn't guess the correct answer in 15 chances :(\nYou can try again though!"
fi
