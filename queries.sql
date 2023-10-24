/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name = 'Luna';

vet_clinic_database=# SELECT * FROM animals;
 id |  name   | date_of_birth | escape_atttempts | neutered | weight_kg
----+---------+---------------+------------------+----------+-----------
  1 | Augmon  | 2020-03-02    |                0 | t        |     10.23
  2 | Gabumon | 2008-11-15    |                2 | t        |         8
  3 | Pikachu | 2021-07-01    |                1 | f        |     15.04
  4 | Devimon | 2017-12-05    |                5 | t        |        11
(4 rows)

<-- Queries -->
// Find all animals whose name ends in "mon".

vet_clinic_database=# SELECT * FROM animals WHERE name LIKE '%mon%';
 id |  name   | date_of_birth | escape_atttempts | neutered | weight_kg
----+---------+---------------+------------------+----------+-----------
  1 | Augmon  | 2020-03-02    |                0 | t        |     10.23
  2 | Gabumon | 2008-11-15    |                2 | t        |         8
  4 | Devimon | 2017-12-05    |                5 | t        |        11
(3 rows)

//List the name of all animals born between 2016 and 2019.

vet_clinic_database=# SELECT * FROM animals WHERE EXTRACT( year FROM date_of_birth) BETWEEN 2016 AND 2019;
 id |  name   | date_of_birth | escape_atttempts | neutered | weight_kg
----+---------+---------------+------------------+----------+-----------
  4 | Devimon | 2017-12-05    |                5 | t        |        11
(1 row)

//List the name of all animals that are neutered and have less than 3 escape attempts.

vet_clinic_database=# SELECT * FROM animals WHERE neutered = TRUE AND escape_atttempts < 3;
 id |  name   | date_of_birth | escape_atttempts | neutered | weight_kg
----+---------+---------------+------------------+----------+-----------
  1 | Augmon  | 2020-03-02    |                0 | t        |     10.23
  2 | Gabumon | 2008-11-15    |                2 | t        |         8
(2 rows)

//List the date of birth of all animals named either "Agumon" or "Pikachu".

vet_clinic_database=# SELECT name, date_of_birth FROM animals WHERE name IN ('Augmon', 'Pikachu');
  name   | date_of_birth
---------+---------------
 Augmon  | 2020-03-02
 Pikachu | 2021-07-01
(2 rows)

//List name and escape attempts of animals that weigh more than 10.5kg

vet_clinic_database=# SELECT name, escape_atttempts FROM animals WHERE weight_kg > 10.5;
  name   | escape_atttempts
---------+------------------
 Pikachu |                1
 Devimon |                5
(2 rows)

//Find all animals that are neutered.

vet_clinic_database=# SELECT * FROM animals WHERE neutered = TRUE;
 id |  name   | date_of_birth | escape_atttempts | neutered | weight_kg
----+---------+---------------+------------------+----------+-----------
  1 | Augmon  | 2020-03-02    |                0 | t        |     10.23
  2 | Gabumon | 2008-11-15    |                2 | t        |         8
  4 | Devimon | 2017-12-05    |                5 | t        |        11
(3 rows)

//Find all animals not named Gabumon.

vet_clinic_database=# SELECT * FROM animals WHERE name <> 'Gabumon';
 id |  name   | date_of_birth | escape_atttempts | neutered | weight_kg
----+---------+---------------+------------------+----------+-----------
  1 | Augmon  | 2020-03-02    |                0 | t        |     10.23
  3 | Pikachu | 2021-07-01    |                1 | f        |     15.04
  4 | Devimon | 2017-12-05    |                5 | t        |        11
(3 rows)

//Find all animals with a weight between 10.4kg and 17.3kg (including the animals with the weights that equals precisely 10.4kg or 17.3kg)

vet_clinic_database=# SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;
 id |  name   | date_of_birth | escape_atttempts | neutered | weight_kg
----+---------+---------------+------------------+----------+-----------
  3 | Pikachu | 2021-07-01    |                1 | f        |     15.04
  4 | Devimon | 2017-12-05    |                5 | t        |        11
(2 rows)
