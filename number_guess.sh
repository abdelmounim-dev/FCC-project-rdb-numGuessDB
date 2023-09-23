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
	if [[ $INSERT_USER_RESULT = "INSERT 0 1" ]]
	then 
		NEW=true
		echo -e "Welcome, $USERNAME! It looks like this is your first time here."
	else 
		echo -e "\nDB ERROR"
		exit 1
	fi
else 
	echo "$USER_RESULT" | (
		read USERNAME bar NUM_GAMES bar BEST_GAME
		echo -e "Welcome back, $USERNAME! You have played $NUM_GAMES games, and your best game took $BEST_GAME guesses."
	)
fi


# Gess?

COUNTER=0

# Start a while loop
while true
do
	echo -e "Guess the secret number between 1 and 1000:"
	read GUESS
	((COUNTER++))
	if ! [[ $GUESS =~ ^[1-9][0-9]*$ ]]
	then
		echo -e "That is not an integer, guess again:"
	else 
		if (( GUESS == NUM ))
		then 
			# ((COUNTER++))
			echo -e "You guessed it in $COUNTER tries. The secret number was $NUM. Nice job!\n"
			# ((COUNTER--))
			break
		elif (( GUESS < NUM ))
		then 
			echo -e "It's higher than that, guess again:"
		else echo -e "It's lower than that, guess again:"
		fi
	fi
    # Increment the counter

done

UPDATE_NGAMES_RESULT=$($PSQL "update users set num_games = num_games + 1")

if [[ $NEW || $BEST_GAME = 0 || $COUNTER < $BEST_GAME ]]
then 
	UPDATE_RESULT=$($PSQL "update users set best_game = $COUNTER where username = '$USERNAME'")
fi

















