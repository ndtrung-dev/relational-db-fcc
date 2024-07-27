# FCC Answer: Relational Database

<strong>(TLDR;)</strong>

This repo contains my notes for 5 projects as a fulfillment a the requirements for Relational Database Certificate provided by <code>[freecodecamp](https://www.freecodecamp.org)</code>.

This certification includes several small courses and 5 major projects, starting with basic Bash commands and progressed to advanced techniques using the terminal; using PostgreSQL and SQL to handle with relational databases; and using Git for version control. Find more details [here](https://www.freecodecamp.org/learn/relational-database).

Link to [my certification](https://www.freecodecamp.org/certification/ndtrung-dev/relational-database-v8) 

## 1. Celestial Bodies Database

Answer: [1_celestial_bodies_db](https://github.com/ndtrung-dev/relational-db-fcc/tree/main/1_celestial_bodies_db)

> <code>Objective</code>: Build a _Celestial Bodies Database_ from scratch using basic PostgreSQL

### Details:

Database Structure

    universe: database
    |--galaxy
    |--star
    |--planet
    |--moon
    |--dummy_table

Main tasks:
- Create <code>universe</code>, <code>galaxy</code>, <code>star</code>, <code>planet</code>, <code>moon</code> and <code>dummy_table</code>
- Each table must have at least 3 columns
- Some types must be used to configue columns: <code>INT</code>, <code>TEXT</code>, <code>VARCHAR</code>, <code>BOOLEAN</code>, <code>SERIAL</code>
- Each table must have a <code>PRIMARY KEY</code>, using <code>UNIQUE</code>, and <code>NOT NULL</code> constraints
- <code>star</code>, <code>planet</code> and <code>moon</code> must have FOREIGN KEY corresponding to PRIMARY KEY of <code>galaxy</code>, <code>star</code> and <code>planet</code>

Notes:

- In this project, I used some javascript codes to rapidly generate the bundle of data rows.

## 2. World Cup Database

Answers: [2_world_cup_db](https://github.com/ndtrung-dev/relational-db-fcc/tree/main/2_world_cup_db)

> <code>Objective</code>: Creat a bash-script file that uploads data points to _World Cup Database_ and another to query data point based on requests

Database Structure:

    worldcup: database
    |--teams: table
    |   |--team_id:
    |   |--name:
    |--games:
        |--winner_id: refer teams(team_id)
        |--winner_goals: 
        |--opponent_id: refer teams(team_id)
        |--opponent_goals:
        |--year:
        |--round: 

Main tasks:
- Retrieve data from csv using terminal
- Create database and tables manually
    - Add column and create references between tables
- Push data point from the csv file to psql databse
- Query data point based on requests by using the combinations of <code>SELECT</code>, <code>JOIN</code> (<code>FULL</code>, <code>LEFT</code>, <code>RIGHT</code> and <code>INNER</code>), <code>COUNT</code>, <code>SUM</code>, <code>AVG</code>, <code>DISTINCT</code>, <code>USING</code>, <code>HAVING</code>, <code>WHERE</code>, <code>ORDER BY</code>, and some basic regular expressions.
    - Sum of all score by 2 winner and opponents from all match
    - Name of all unique winning teams 

## 3. Salon Appointment Scheduler

Answer: [3_salon_appointment_scheduler](https://github.com/ndtrung-dev/relational-db-fcc/tree/main/3_salon_appointment_scheduler)

> <code>Objective</code>: Creat a bash-based form to record customer datum and upload those responses to database 

Database Structure:

    salon: database
    |--customers:
    |  |--customer-id:
    |   |--name:
    |   |--phone:
    |--services:
    |   |--service-id:
    |   |--name:
    |--appointments:
        |--customer-id: refer customers(customer_id)
        |--service-id: refer services(service_idƒ)
        |--appointment-id:
        |--time:

Main tasks:
- Create database and tables, then insert some data point into <code>services</code> table
- Create a functional bash form and generate responses based on answers:
    - Write questions to terminal and read human answers
    - Query data point from database corresponding to the answers
    - Write responses to terminal based on queried data point
    - Upload answers to database
- Using bash command and pipeline technique to properly format and display data, <u>_eg:_</u> <code>grep</code>, <code>sed</code>, <code>cat</code>, etc...

## 4. Periodic Table Databse

Answer: [4_periodic_table_db](https://github.com/ndtrung-dev/relational-db-fcc/tree/main/4_periodic_table_db)

> <code>Objective</code>: Standardize a provided periodic table and query data point based on requests 

Database Structure:

    periodic_table: database
    |--elements:
    |   |--atomic_id:
    |   |--name:
    |   |--symbol:
    |--properties: 
    |   |--atomic_id: refer elements(atomic_id) 
    |   |--atomic_mass: renamed from weight
    |   |--melting_point_celsius: renamed from melting_point
    |   |--type_id: refer types(type_id)
    |   |--(type)[removed later]
    |--types:
        |--type_id:
        |--type:

Main tasks:
- Clean up database and add missing data point:
    - Reformat data point using <code>DECIMAL</code>, <code>INITCAP</code>
    - Include proper constraints (like <code>UNIQUE</code>, <code>NOT NULL</code>) and <code>KEY</code> (both <code>FOREIGN</code> and <code>PRIMARY</code>)
    - Create <code>types</code> to properly organize database
    - Rename column name for better descriptive details
- Write bash script to query and display data points:
    - Process type logics for better query command
    - Practice pipelines for better processing responses

## 5. Number_guessing_game

Answer: [5_number_guessing_game](https://github.com/ndtrung-dev/relational-db-fcc/tree/main/5_number_guessing_game)

> <code>Objective</code>: Create from scrath a database to store user infomations and game records; and create a guessing number game using bash scripts that upload data to database

Database Structure:

    number_guess:
    |--users:
    |   |--user_id:
    |   |--username:
    |--games:
        |--game_id:
        |--user_id: refer users(user_id)
        |--guesses:

Main tasks:
- Create a database from scratch, inclusively declaring proper relations and constraints
    - Design the structures of database and tables
    - Declare variable with proper constraints
    - Create dummy data point to tests
- Create a functional form using bash script:
    - Identify username
    - Read and write proper responses to terminal
    - Upload complete games info to database



