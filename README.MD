# FCC Answer: Relational Database

<strong>(TLDR;)</strong>

This repo contains my notes for 5 projects as a fulfillment a the requirements for Relational Database Certificate provided by <code>[freecodecamp](https://www.freecodecamp.org)</code>.

This certification includes several small courses and 5 major projects, starting with basic Bash commands and progressed to advanced techniques using the terminal; using PostgreSQL and SQL to handle with relational databases; and using Git for version control. Find more [here](https://www.freecodecamp.org/learn/relational-database).

Link to my certification [(upadting...)]()

## 1. Celestial Bodies Database

Code: [universe.sql]()

> Summary: To complete this project, learners are required to know how to create and connect to database, create tables with different columns, set up column type, set up PRIMARY and FOREIGN keys to regard relational data points, INSERT data rows into tables.

DATABASE STRUCTURE:

    universe: database
    |--galaxy
    |--star
    |--planet
    |--moon
    |--dummy_table

Some requirements:

- Create <code>universe</code>, <code>galaxy</code>, <code>star</code>, <code>planet</code>, <code>moon</code> and <code>dummy_table</code>
- Each table must have at least 3 columns
- Some types must be used to configue columns: INT, TEXT, VARCHAR, BOOLEAN, SERIAL
- Each table must have a PRIMARY KEY, using UNIQUE, NOT NULL constraints
- <code>star</code>, <code>planet</code> and <code>moon</code> must have FOREIGN KEY corresponding to PRIMARY KEY of <code>galaxy</code>, <code>star</code> and <code>planet</code>

Notes:

- In this project, I used some javascript codes to rapidly generate the bundle of data rows.

(Updating...)
