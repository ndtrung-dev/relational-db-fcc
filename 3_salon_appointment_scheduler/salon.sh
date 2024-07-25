#!/bin/bash

echo -e "\n~~~~~ MY SALON ~~~~~\n"

PSQL="psql --username=freecodecamp --dbname=salon -t -c"

S_LIST=$($PSQL "SELECT * FROM services" | sed -e 's/^ *//g')

MAIN_MENU () {
  if [[ ! -z $1 ]]
  then
    echo -e "$1" 
  fi
  echo "$S_LIST" | while read S_ID BAR S_NAME
  do
    echo "$S_ID) $S_NAME"
  done

  # read service
  read SERVICE_ID_SELECTED
  S_ID_EXISTENCE=$($PSQL "SELECT * FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  if [[ -z $S_ID_EXISTENCE ]]
  then
    MAIN_MENU "\nI could not find that service. What would you like today?"
  else
    #get phone number
    echo -e "\nWhat's your phone number?"
    read CUSTOMER_PHONE
    #check id based on phone number
    C_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'" | sed -e 's/^ *\| \$//g')
    #if not valid => add new user
    if [[ -z $C_ID ]]
    then
      echo -e '\nI don't have a record for that phone number, what's your name?'
      read CUSTOMER_NAME
      C_UPLOAD=$($PSQL "INSERT INTO customers(name,phone) VALUES('$CUSTOMER_NAME','$CUSTOMER_PHONE')")
    fi

    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'" | sed -e 's/^ *\| \$//g');
    
    # ask time 
    echo -e "\nWhat time would you like your cut, $CUSTOMER_NAME?"
    read SERVICE_TIME

    #get
    C_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'" | sed -e 's/^ *\| \$//g')
    #upload time
    S_T_UPLOADED=$($PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES($C_ID,$SERVICE_ID_SELECTED,'$SERVICE_TIME')")

    # confirm time
    echo -e "\nI have put you down for a cut at $SERVICE_TIME, $CUSTOMER_NAME."
  fi
}

MAIN_MENU