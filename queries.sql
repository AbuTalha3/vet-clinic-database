<--Project Queries -->

 SELECT * FROM animals WHERE name LIKE '%mon';
 SELECT * FROM animals WHERE EXTRACT( year FROM date_of_birth) BETWEEN 2016 AND 2019;
 SELECT * FROM animals WHERE neutered = TRUE AND escape_attempts < 3;
 SELECT name, date_of_birth FROM animals WHERE name IN ('Augmon', 'Pikachu');
 SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
 SELECT * FROM animals WHERE neutered = TRUE;
 SELECT * FROM animals WHERE name <> 'Gabumon';
 SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3; 


<--Queries for 3rd day-->

SELECT a.name 
FROM animals a JOIN visits v ON v.animal_id = a.id 
JOIN vets ve ON ve.id = v.vet_id 
WHERE ve.name = 'William Tatcher' 
ORDER BY v.date_of_visit DESC
LIMIT 1;

SELECT COUNT(DISTINCT a.id) AS num_animals_seen
FROM visits v
JOIN animals a ON v.animal_id = a.id
JOIN vets ve ON v.vet_id = ve.id
WHERE ve.name = 'Stephanie Mendez';

SELECT ve.name, s.name 
from vets ve LEFT JOIN specializations spe ON spe.vet_id = ve.id 
LEFT JOIN species s ON s.id = spe.species_id;

SELECT a.name, COUNT(*) AS num_visits
FROM visits v
JOIN animals a ON v.animal_id = a.id
GROUP BY a.id
ORDER BY num_visits DESC
LIMIT 1;

SELECT count(v.id) from visits v
JOIN animals a ON v.animal_id = a.id
JOIN vets ve ON v.vet_id = ve.id
LEFT JOIN specializations spe ON spe.vet_id = ve.id AND spe.species_id = a.species_id
WHERE spe.id IS NULL;

SELECT s.name FROM animals a
JOIN species s ON a.species_id = s.id
JOIN visits v ON v.animal_id = a.id
JOIN vets ve ON ve.id = v.vet_id
where ve.name = 'Maisy Smith'
GROUP BY s.name
ORDER BY count(a.id) DESC;

SELECT a.name, v.date_of_visit 
FROM animals a 
JOIN visits v ON v.animal_id = a.id 
JOIN vets ve ON ve.id = v.vet_id 
WHERE ve.name = 'Stephanie Mendez' AND v.date_of_visit 
BETWEEN '2020-04-01' AND '2020-08-30';

SELECT a.name 
FROM animals a 
JOIN visits v ON v.animal_id = a.id 
JOIN vets ve ON ve.id = v.vet_id 
WHERE ve.name = 'Maisy Smith' 
ORDER BY v.date_of_visit ASC
LIMIT 1;
