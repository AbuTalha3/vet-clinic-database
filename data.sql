/* Populate database with sample data. */

INSERT INTO animals (name) VALUES ('Luna');
INSERT INTO animals (name) VALUES ('Daisy');
INSERT INTO animals (name) VALUES ('Charlie');

vet_clinic_database=# INSERT INTO animals (id,name,date_of_birth,escape_atttempts,neutered,weight_kg) VALUES (1, 'Augmon', '2020-3-2', 0, 'true', 10.23);
INSERT 0 1
vet_clinic_database=# INSERT INTO animals (id,name,date_of_birth,escape_atttempts,neutered,weight_kg) VALUES (2, 'Gabumon', '2008-11-15', 2, 'true', 8);
INSERT 0 1
vet_clinic_database=# INSERT INTO animals (id,name,date_of_birth,escape_atttempts,neutered,weight_kg) VALUES (3, 'Pikachu', '2021-7-1', 1, 'false', 15.04);
INSERT 0 1
vet_clinic_database=# INSERT INTO animals (id,name,date_of_birth,escape_atttempts,neutered,weight_kg) VALUES (4, 'Devimon', '2017-12-5', 5, 'true', 11);
INSERT 0 1