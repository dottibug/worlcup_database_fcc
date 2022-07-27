#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Truncate tables when you run script
echo $($PSQL "TRUNCATE games, teams")

# read csv and pipe to variables
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
  do
    echo $YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS

    if [[ $YEAR != year ]]
      then
      YEAR=$YEAR
    fi

    if [[ $ROUND != round ]]
      then
      ROUND=$ROUND
    fi

    if [[ $WINNER != winner ]]
      then
      # insert into TEAMS name if no conflict
      INSERT_TEAM_WINNER_NAME=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER') ON CONFLICT (name) DO NOTHING")
      if [[ $INSERT_TEAM_WINNER_NAME == "INSERT 0 1" ]]
       then
       echo "TEAM winner name: '$WINNER'"
      fi
      # get team_id of $WINNER
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      echo "Winner team_id: $WINNER_ID" 
    fi  

    if [[ $OPPONENT != opponent ]]
      then
      # insert into TEAMS name if no conflict
      INSERT_TEAM_OPPONENT_NAME=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT') ON CONFLICT (name) DO NOTHING")
      if [[ $INSERT_TEAM_OPPONENT_NAME == "INSERT 0 1" ]]
        then
        echo "TEAM opponent name: '$OPPONENT'"
      fi
      # get team_id of $OPPONENT
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      echo "Opponent team_id: $OPPONENT_ID"
    fi

    if [[ $WINNER_GOALS != winner_goals ]]
      then
      WINNER_GOALS=$WINNER_GOALS
    fi

    if [[ $OPPONENT_GOALS != opponent_goals ]]
      then
      OPPONENT_GOALS=$OPPONENT_GOALS
    fi

    INSERT_GAME_DATA=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    if [[ $INSERT_GAME_DATA == "INSERT 0 1" ]]
     then
     echo -e "Inserted GAME data: $YEAR '$ROUND' $WINNER_ID $OPPONENT_ID $WINNER_GOALS $OPPONENT_GOALS\n" 
    fi

  done