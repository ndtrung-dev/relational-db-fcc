#!/bin/bash 

# without input 

if [[ -z $1 ]] 
then
  echo 'Please provide an element as an argument.'
else
  PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

  if [[ $1 =~ ^[0-9]+$ ]]
  then 
    GET_ELEMENT=$($PSQL "SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties FULL JOIN elements USING (atomic_number) FULL JOIN types USING(type_id) WHERE atomic_number='$1'")
  else
    GET_ELEMENT=$($PSQL "SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties FULL JOIN elements USING (atomic_number) FULL JOIN types USING(type_id) WHERE name='$1' OR symbol='$1'")
  fi

  if [[ -z $GET_ELEMENT ]]
  then
    echo 'I could not find that element in the database.'
  else
    echo $GET_ELEMENT | while IFS='|' read NUM NAME SYMBOL TYPE MASS MELT BOIL
    do
      echo "The element with atomic number $NUM is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
    done
  fi  
fi