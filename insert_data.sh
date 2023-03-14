#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

declare -a teams

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
  if [[ $YEAR != 'year' ]]
  then
    teams+=("$WINNER" "$OPPONENT")
  fi

  for team in "${teams[@]}"
  do
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$team'")

    if [[ -z $TEAM_ID ]]
    then
      INSERT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$team')")

      if [[ $INSERT_RESULT == "INSERT 0 1" ]]
      then
        echo Insert $team
      fi
    fi
  done
done
