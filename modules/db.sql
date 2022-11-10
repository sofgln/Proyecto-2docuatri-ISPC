CREATE DATABASE argentus;

CREATE TABLE usuario (
    userID int NOT NULL PRIMARY KEY,
    nombre varchar(255) NOT NULL,
    email varchar(255),
    telefono varchar(255) NOT NULL,
    ciudad varchar(255) NOT NULL,
    asesorID int FOREIGN KEY REFERENCES asesor(asesorID),
    planID int FOREIGN KEY REFERENCES planes(planID),
    pais varchar(255) FOREIGN KEY REFERENCES paises(nombre)
);

CREATE TABLE asesor (
    asesorID int NOT NULL PRIMARY KEY, 
    nombre varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    telefono varchar(255) NOT NULL,
);

CREATE TABLE planes (
    planID int NOT NULL PRIMARY KEY,
    costo int NOT NULL,
    isPremium boolean NOT NULL
);

CREATE TABLE paises (
    nombre varchar(255) NOT NULL PRIMARY KEY,
    requisitos varchar(255) NOT NULL,
    disponibilidad int
);