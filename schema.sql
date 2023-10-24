/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id integer,
    name varchar(100),
    date_of_birth date,
    escape_atttempts decimal(10,2),
    neutered boolean,
    weight_kg integer
);


vet_clinic_database=# \d animals
                          Table "public.animals"
      Column      |         Type          | Collation | Nullable | Default
------------------+-----------------------+-----------+----------+---------
 id               | integer               |           | not null |
 name             | character varying(25) |           | not null |
 date_of_birth    | date                  |           |          |
 escape_atttempts | integer               |           | not null |
 neutered         | boolean               |           |          |
 weight_kg        | numeric               |           |          |
