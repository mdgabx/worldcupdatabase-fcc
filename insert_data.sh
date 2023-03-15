#!/bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

declare -A teams

while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
  if [[ $YEAR != 'year' ]]
  then 
    teams["$WINNER"]=1
    teams["$OPPONENT"]=1
    
    TEAM_ID_W=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    if [[ -z $TEAM_ID_W ]]
    then
      INSERT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    fi
    
    TEAM_ID_O=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    if [[ -z $TEAM_ID_O ]]
    then
      INSERT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    fi
    
    INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) 
                VALUES ($YEAR, '$ROUND', 
                  (SELECT team_id FROM teams WHERE name='$WINNER'),
                  (SELECT team_id FROM teams WHERE name='$OPPONENT'),
                  $WINNER_GOALS, $OPPONENT_GOALS)")
  fi

done < games.csv
