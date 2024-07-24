#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
if [[ $YEAR != 'year' ]]
then
  # check if name winner?
  SELECT_WINNER_RESULT=$($PSQL " SELECT * FROM teams WHERE name='$WINNER' ")
  if [[ -z $SELECT_WINNER_RESULT  ]]
  then
  # import distinct name 
    R=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    # R=$($PSQL "")
  fi

  # check if name opponent?
  SELECT_OPPONENT_RESULT=$($PSQL " SELECT * FROM teams WHERE name='$OPPONENT' ")
  if [[ -z $SELECT_OPPONENT_RESULT  ]]
  then
  # import distinct name 
    R=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    # $($PSQL "")
  fi

  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  R=$($PSQL "INSERT INTO games(year,round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR,'$ROUND',$WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")

fi
done

# Do not change code above this line. Use the PSQL variable above to query your database.
