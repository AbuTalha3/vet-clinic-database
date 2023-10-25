/*Queries that provide answers to the questions from all projects.*/

vet_clinic_database=# <--Example -->
 SELECT * FROM animals;

<--Project Queries -->
 SELECT * FROM animals WHERE name LIKE '%mon';

 SELECT * FROM animals WHERE EXTRACT( year FROM date_of_birth) BETWEEN 2016 AND 2019;

 SELECT * FROM animals WHERE neutered = TRUE AND escape_attempts < 3;

 SELECT name, date_of_birth FROM animals WHERE name IN ('Augmon', 'Pikachu');

 SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

 SELECT * FROM animals WHERE neutered = TRUE;

 SELECT * FROM animals WHERE name <> 'Gabumon';

 SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3; 

