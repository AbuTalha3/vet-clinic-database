<--Project Queries -->

 SELECT * FROM animals WHERE name LIKE '%mon';
 SELECT * FROM animals WHERE EXTRACT( year FROM date_of_birth) BETWEEN 2016 AND 2019;
 SELECT * FROM animals WHERE neutered = TRUE AND escape_attempts < 3;
 SELECT name, date_of_birth FROM animals WHERE name IN ('Augmon', 'Pikachu');
 SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
 SELECT * FROM animals WHERE neutered = TRUE;
 SELECT * FROM animals WHERE name <> 'Gabumon';
 SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3; 

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
