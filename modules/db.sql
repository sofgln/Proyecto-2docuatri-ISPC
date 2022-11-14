CREATE DATABASE argentus_working

CREATE TABLE Clientes(
    userID int NOT NULL PRIMARY KEY,
    nombre varchar(255) NOT NULL,
    email varchar(255),
    telefono varchar(255) NOT NULL,
    apellido varchar(255) NOT NULL,
    asesorID int FOREIGN KEY REFERENCES asesor(asesorID),
    planID int FOREIGN KEY REFERENCES planes(planID),
    pais varchar(255) FOREIGN KEY REFERENCES paises(nombre)
);

CREATE TABLE Asesor (
    asesorID int NOT NULL PRIMARY KEY, 
    nombre varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    telefono varchar(255) NOT NULL,
);

CREATE TABLE Planes (
    planID int NOT NULL PRIMARY KEY,
    costo int NOT NULL,
    isPremium boolean NOT NULL
);

CREATE TABLE Paises (
    nombre varchar(255) NOT NULL PRIMARY KEY,
    requisitos varchar(255) NOT NULL,
    disponibilidad int
);