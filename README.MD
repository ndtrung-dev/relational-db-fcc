# FCC Answer: Relational Database

<strong>(TLDR;)</strong>

This repo contains my notes for 5 projects as a fulfillment a the requirements for Relational Database Certificate provided by <code>[freecodecamp](https://www.freecodecamp.org)</code>.

This certification includes several small courses and 5 major projects, starting with basic Bash commands and progressed to advanced techniques using the terminal; using PostgreSQL and SQL to handle with relational databases; and using Git for version control. Find more [here](https://www.freecodecamp.org/learn/relational-database).

Link to my certification [(upadting...)]()

## 1. Celestial Bodies Database

Answer: [1_celestial_bodies_db](https://github.com/ndtrung-dev/relational-db-fcc/tree/main/1_celestial_bodies_db)

> <code>Objective</code>: Know how to create and connect to database, create tables with different columns, set up column type, set up <code>PRIMARY</code> and <code>FOREIGN</code> keys to regard relational data points, <code>INSERT</code> data rows into tables.

### Details:

Database Structure

    universe: database
    |--galaxy
    |--star
    |--planet
    |--moon
    |--dummy_table

Main requirements:

- Create <code>universe</code>, <code>galaxy</code>, <code>star</code>, <code>planet</code>, <code>moon</code> and <code>dummy_table</code>
- Each table must have at least 3 columns
- Some types must be used to configue columns: <code>INT</code>, <code>TEXT</code>, <code>VARCHAR</code>, <code>BOOLEAN</code>, <code>SERIAL</code>
- Each table must have a <code>PRIMARY KEY</code>, using <code>UNIQUE</code>, and <code>NOT NULL</code> constraints
- <code>star</code>, <code>planet</code> and <code>moon</code> must have FOREIGN KEY corresponding to PRIMARY KEY of <code>galaxy</code>, <code>star</code> and <code>planet</code>

Notes:

- In this project, I used some javascript codes to rapidly generate the bundle of data rows.

## 2. World Cup Database

Answers: [2_world_cup_db](https://github.com/ndtrung-dev/relational-db-fcc/tree/main/2_world_cup_db)

> <code>Objective</code>: Know how to using bash script to upload data from csv file to database, querry data points based on requirements.

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

Main requirements:
- Retrieve data from csv using terminal
- Create database and tables manually
    - Add column and create references between tables
- Push data point from the csv file to psql databse
- Query data point based on requests by using the combinations of <code>SELECT</code>, <code>JOIN</code> (<code>FULL</code>, <code>LEFT</code>, <code>RIGHT</code> and <code>INNER</code>), <code>COUNT</code>, <code>SUM</code>, <code>AVG</code>, <code>DISTINCT</code>, <code>USING</code>, <code>HAVING</code>, <code>WHERE</code>, <code>ORDER BY</code>, and some basic regular expressions.
    - Sum of all score by 2 winner and opponents from all match
    - Name of all unique winning teams 

## 3. Salon Appointment Scheduler

Answer: [3_salon_appointment_scheduler](https://github.com/ndtrung-dev/relational-db-fcc/tree/main/3_salon_appointment_scheduler)

> <code>Objective</code>: Know how to use bash to create a basic form using bash and then upload response to database

Database Structure:

    salon: database
    |--customers:
    |  |--customer-id:
    |   |--name:
    |   |--phone:
    |--services:
    |  |--service-id:
    |  |--name:
    |--appointments:
       |--customer-id: refer customers(customer_id)
       |--service-id: refer services(service_idƒ)
       |--appointment-id:
       |--time:

Main requirements:
- Create database and tables, then insert some data point into <code>services</code> table
- Create a functional bash form and generate responses based on answers:
    - Write questions to terminal and read human answers
    - Query data point from database corresponding to the answers
    - Write responses to terminal based on queried data point
    - Upload answers to database
- Using bash command and pipeline technique to properly format and display data, <u>_eg:_</u> <code>grep</code>, <code>sed</code>, <code>cat</code>, etc...


(Keep updating...)
