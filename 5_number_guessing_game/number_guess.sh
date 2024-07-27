#!/bin/bash

# set up database
PSQL="psql --username=freecodecamp --dbname=guessing_number -t --no-align -c"

echo -e '\n~~~ My Guessing Game~~~\n'

MAIN(){
  if [[ ! -z $1 ]] 
  then
    echo -e "\n$1"
  fi
  
  echo -e '\nEnter your username:'
  read U_NAME 

  # if [[ -z $U_NAME ]] 
  # then
  #   MAIN '\nPlease enter a valid username!' 
  # else 
    GET_U_ID=$($PSQL "SELECT user_id FROM users WHERE username='$U_NAME'")

    if [[ -z $GET_U_ID ]] 
    then
      echo -e "\nWelcome, $U_NAME! It looks like this is your first time here."
      UPDATE_U_INFO=$($PSQL "INSERT INTO users(username) VALUES('$U_NAME')")
    else
      GET_BASIC_STATS=$($PSQL "SELECT COUNT(game_id), MIN(guesses) FROM games RIGHT JOIN users USING(user_id)WHERE username='$U_NAME'") 
      echo "$GET_BASIC_STATS" | while IFS="|" read GAMES_PLAYED BEST_GAME
      do
        echo -e "\nWelcome back, $U_NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
      done
    fi

    MAX=1000
    MIN=1

    SECRET_NUMBER=$(( $RANDOM % $(($MAX - $MIN)) + $MIN ))

    echo $SECRET_NUMBER
    NUMBER_OF_GUESSES=0
    
    FNC_GUESS () {
      if [[ -z $1 ]]
      then 
        echo -e "\nGuess the secret number between $MIN and $MAX:"
      else 
        echo -e "\n$1"
      fi

      read GUESS_NUM
      NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES + 1))

      if [[ ! $GUESS_NUM =~ ^[0-9]+$ ]]
      then
        FNC_GUESS "That is not an integer, guess again:"
      elif [[ $GUESS_NUM -gt $SECRET_NUMBER ]]
      then
        FNC_GUESS "It's lower than that, guess again:"
      elif [[ $GUESS_NUM -lt $SECRET_NUMBER ]]
      then
        FNC_GUESS "It's higher than that, guess again:"
      else 
        echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
        U_ID=$($PSQL "SELECT user_id FROM users WHERE username='$U_NAME'")
        UPDATE_GAME=$($PSQL "INSERT INTO games(user_id,guesses) VALUES($U_ID,$NUMBER_OF_GUESSES)")
      fi   
    }

    FNC_GUESS 

    

  # fi
}

MAIN


