#!/bin/bash
# randomly generate a number that users have to guess

PSQL="psql --username=freecodecamp --dbname=<database_name> -t --no-align -c"
NUM=$(( $RANDOM % 1000 + 1))



echo -e "\nEnter your username:"
read USERNAME
# check if user already exists
USER_RESULT=$($PSQL "select username, num_games, best_game from users where username = $USERNAME")
if [[ -z $USER_RESULT ]]
then 
	INSERT_USER_RESULT=$($PSQL "insert into users (username) values ('$USERNAME')")
fi
