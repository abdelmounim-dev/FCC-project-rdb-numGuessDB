#!/bin/bash
# randomly generate a number that users have to guess

PSQL="psql --username=freecodecamp --dbname=number_guess -t -c"
NUM=$(( $RANDOM % 1000 + 1))



echo -e "Enter your username:"
read USERNAME
# check if user already exists
USER_RESULT=$($PSQL "select username, num_games, best_game from users where username = '$USERNAME'")
if [[ -z $USER_RESULT ]]
then 
	INSERT_USER_RESULT=$($PSQL "insert into users (username) values ('$USERNAME')")
	if [[ INSERT_USER_RESULT = "INSERT 0 1" ]]
	then 
		echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
	else 
		echo -e "\nDB ERROR"
		exit 1
	fi
else 
	echo "$USER_RESULT" | (
		read USERNAME bar NUM_GAMES bar BEST_GAME
		echo -e "\nWelcome back, $USERNAME! You have played $NUM_GAMES games, and your best game took $BEST_GAME guesses."
	)
fi


# Gess?

counter=1

# Start a while loop
while true
do
	echo -e "\nGuess the secret number between 1 and 1000:"
	read GUESS
	if ! [[ $GUESS =~ ^[1-9][0-9]*$ ]]
	then
		echo -e "\nThat is not an integer, guess again:"
	else 
		if (( GUESS = NUM ))
		then 
			echo -e "\nYou guessed it in $COUNTER tires. The secret number was $NUM. Nice job!"
			break
		elif (( GUESS < NUM ))
		then 
			echo -e "\nIt's higher than that, guess again:"
		else echo -e "\nIt's lower than that, guess again:"
	fi
    # Increment the counter
    ((counter++))

done
