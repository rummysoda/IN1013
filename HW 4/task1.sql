DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;

USE pet_database;

CREATE TABLE petPet (
    petname VARCHAR(45) NOT NULL PRIMARY KEY,
    owner VARCHAR(45) NOT NULL,
    species VARCHAR(45) NOT NULL,
    gender ENUM('M', 'F'),
    birth DATE NOT NULL,
    death DATE NULL
);

CREATE TABLE petEvent (
    petname VARCHAR(45) NOT NULL,
    eventdate DATE NOT NULL,
    eventtype VARCHAR(45) NOT NULL,
    remark VARCHAR(255) NULL,
    PRIMARY KEY (petname, eventdate),
    FOREIGN KEY (petname) REFERENCES petPet(petname)
);