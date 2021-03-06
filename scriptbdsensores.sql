create database sensores;
use sensores;
show tables;

CREATE TABLE temperatura(idtemperatura int primary key auto_increment,fechayhora timestamp,temperatura int,zona varchar(40));
CREATE TABLE consumoenergetico(idcons int primary key auto_increment, fechayhora timestamp, consumo int,area varchar(39));
CREATE TABLE nivelesdeagua(idniveles int primary key auto_increment,fechayhora timestamp , tipocontenedor varchar(45), porcentaje int);
CREATE TABLE luz(idluz int primary key auto_increment,fechayhora timestamp , porcentaje int);
CREATE TABLE alarmas(idalarma int primary key auto_increment, fechayhora timestamp, problema varchar(45), area varchar(39));
CREATE TABLE reportes(idreporte int primary key auto_increment);
CREATE TABLE fugas(idfuga int primary key auto_increment, fechayhora timestamp, area varchar(45), niveldegas int);

select * from temperatura; /*la ruta de este en postman es /sensores  --"Fecha":"2020-05-10","Hora":"20:00:00","Temperatura":"28.50°C" */
select*from consumoenergetico; /*la ruta de este en postman es /consumoenergetico --   "fecha":"2020-05-10","hora":"20:00:00","consumo":"500W","area":"Habitacion 1" */
select*from nivelesdeagua; /*la ruta de este en postman es /nivelesdeagua */
select*from luz; /*la ruta de este en postman es /luz --"fecha":"2020-05-10","hora":"20:00:00","tipocontenedor":"Tinaco 2","porcentaje":"40%"*/
select*from alarmas; /*la ruta de este en postman es /alarmas --   "hora":"20:00:00","fecha":"2020-05-10","problema":"Ventana abierta","area":"Cuarto de hermana" */
select * from fugas;

