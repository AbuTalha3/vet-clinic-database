<--Project Queries -->

 SELECT * FROM animals WHERE name LIKE '%mon';
 SELECT * FROM animals WHERE EXTRACT( year FROM date_of_birth) BETWEEN 2016 AND 2019;
 SELECT * FROM animals WHERE neutered = TRUE AND escape_attempts < 3;
 SELECT name, date_of_birth FROM animals WHERE name IN ('Augmon', 'Pikachu');
 SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
 SELECT * FROM animals WHERE neutered = TRUE;
 SELECT * FROM animals WHERE name <> 'Gabumon';
 SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3; 

 BEGIN ;
 SET species = 'unspecified' ;
 ROLLBACK ;
 UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon' ;
 UPDATE animals SET species = 'pokemon' WHERE species IS NULL OR species = '';
 
 BEGIN ;
 DELETE FROM animals ;
 ROLLBACK ;
 SELECT * FROM animals ;

 BEGIN ;
 DELETE FROM animals WHERE date_of_birth > '2022-01-01' ;
 SAVEPOINT before_update ;
 UPDATE animals SET weight_kg = weight_kg * -1 ;
 ROLLBACK TO before_update ;
 UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0 ;
 COMMIT ;

SELECT COUNT(*) as total_animals FROM animals ;
SELECT COUNT(*) as no_escape_count FROM animals WHERE escape_attempts = 0 ;
SELECT AVG(weight_kg) as average_weight FROM animals ;
SELECT neutered, MAX(escape_attempts) as max_escape_attempts FROM animals GROUP BY neutered ;
SELECT species, MIN(weight_kg) as min_weight, MAX(weight_kg) as max_weight FROM animals GROUP BY species ;
SELECT species, AVG(escape_attempts) as average_escape_attempts FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;
=======
SELECT a.name AS animal_name FROM owners o
JOIN animals a ON o.id = a.owner_id
WHERE o.full_name = 'Melody Pond';

SELECT a.name AS animal_name FROM animals a
JOIN species s ON a.species_id = s.id
WHERE s.name = 'Pokemon';

SELECT o.full_name AS owner_name, a.name AS animal_name
FROM owners o
LEFT JOIN animals a ON o.id = a.owner_id;

SELECT s.name AS species_name, COUNT(*) AS animal_count FROM species s
LEFT JOIN animals a ON s.id = a.species_id
GROUP BY s.name ORDER BY s.name;

SELECT a.name AS Digimon_name FROM owners o
JOIN animals a ON o.id = a.owner_id
JOIN species s ON a.species_id = s.id
WHERE o.full_name = 'Jennifer Orwell' AND s.name = 'Digimon';

SELECT a.name AS animal_name  FROM owners o
JOIN animals a ON o.id = a.owner_id
WHERE o.full_name = 'Dean Winchester' AND a.escape_attempts = 0;

SELECT o.full_name AS owner_name, COUNT(a.id) AS animal_count
FROM owners o
LEFT JOIN animals a ON o.id = a.owner_id
GROUP BY o.full_name
ORDER BY animal_count DESC
LIMIT 1;
