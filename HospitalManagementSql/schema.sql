create database Hospitalmanagement;
use Hospitalmanagement;


create table patient(
    patientid int AUTO_INCREMENT primary key,
    name varchar(20),
    age int,
    gender varchar(20)
);



create table doctor(
    doctorid int AUTO_INCREMENT primary key,
    name varchar(20),
    specialisation varchar(30)
);


create table appointments(
    appointmentid int AUTO_INCREMENT primary key,
    patientid int,
    doctorid int,
    date DATE,
    foreign key(patientid) references patient(patientid),
    foreign key(doctorid) references doctor(doctorid)

);



create table treatments(
    treatmentid int AUTO_INCREMENT primary key,
    patientid int, 
    diagnosis varchar(50),
    cost decimal(10,3),
    treatmentdate DATE,
    foreign key(patientid) references patient(patientid)
);
