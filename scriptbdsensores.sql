create database sensores;
use sensores;
show tables;

CREATE TABLE Temperatura(idtemperatura int primary key auto_increment, Fecha date,Hora time,Temperatura int);
CREATE TABLE consumoenergetico(idcons int primary key auto_increment, fecha date, hora time, consumo double,area varchar(39));
CREATE TABLE fugasdegas(idfugas int primary key auto_increment, fecha date, hora time, area varchar(45), estado varchar(20));
CREATE TABLE nivelesdeagua(idniveles int primary key auto_increment, hora time, fecha date, tipocontenedor varchar(45), porcentaje int);
CREATE TABLE luz(idluz int primary key auto_increment, hora time, fecha date, porcentaje int);
CREATE TABLE alarmas(idalarma int primary key auto_increment, hora time, fecha date, problema varchar(45), area varchar(39));
CREATE TABLE reportes(idreporte int primary key auto_increment);

select * from Temperatura; /*la ruta de este en postman es /sensores  --"Fecha":"2020-05-10","Hora":"20:00:00","Temperatura":"28.50°C" */
select*from consumoenergetico; /*la ruta de este en postman es /consumoenergetico --   "fecha":"2020-05-10","hora":"20:00:00","consumo":"500W","area":"Habitacion 1" */
select*from fugasdegas; /*la ruta de este en postman es /fugasdegas --"fecha":"2020-05-10","hora":"20:00:00","area":"Baño","estado":"Sin Fuga" */
select*from nivelesdeagua; /*la ruta de este en postman es /nivelesdeagua */
select*from luz; /*la ruta de este en postman es /luz --"fecha":"2020-05-10","hora":"20:00:00","tipocontenedor":"Tinaco 2","porcentaje":"40%"*/
select*from alarmas; /*la ruta de este en postman es /alarmas --   "hora":"20:00:00","fecha":"2020-05-10","problema":"Ventana abierta","area":"Cuarto de hermana" */

drop database sensores;