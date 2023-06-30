DROP DATABASE IF EXISTS Estudiante;
CREATE database Estudiante;
use Estudiante;
create table ESTUDIANTE(
DNI INT (10),
Nombre VARCHAR (20),
Mail TEXT (50),
Fecha_nac DATE,
Edad INT (3),
PRIMARY KEY (DNI));

create table CURSO(
ID_Pizarrón INT (3),
Mesas INT (3),
Sillas INT (3),
Puertas INT (3),
Alumnos INT (3),
PRIMARY KEY (ID_Pizarrón));

create table MATERIA(
Nom_Materia VARCHAR (50),
ID_materia INT AUTO_INCREMENT,
ID_nivel INT,
PRIMARY KEY (ID_materia));


create table PROBLEMA (
ID_problema INT,
Categoría VARCHAR (50),
Enunciado VARCHAR (50),
ID_materia INT,
PRIMARY KEY (ID_problema),
FOREIGN KEY (ID_materia)
REFERENCES MATERIA (ID_materia));


INSERT INTO ESTUDIANTE (DNI, Nombre, Mail, Fecha_nac, Edad)
VALUES (23323490, "Juan", "Alberto@gmail.com", "2003-03-12", 20),
	(29453998, "Sara", "Abaro@gmail.com", "2005-07-05", 18),
    (12384829, "Renata", "Alberiño@gmail.com", "1989-04-23", 34),
    (19344233, "Estanislao", "Alvaro@gmail.com", "1998-02-28", 25),
    (32849388, "Edson", "Albere@gmail.com", "2004-04-30", 18);

INSERT INTO CURSO (ID_Pizarrón, Mesas, Sillas, Puertas, Alumnos)
VALUES (1,  10, 100, 4, 100),
		(2,  9, 90, 4, 90),
        (3,  8, 80, 4, 80),
        (4,  7, 70, 4, 70),
        (5,  6, 60, 4, 60);
        
INSERT INTO MATERIA (Nom_Materia)
VALUES ("Matematica"),
		("Lengua"),
		("Ingles");

INSERT INTO PROBLEMA (ID_problema, Categoría, Enunciado, ID_materia)
VALUES (1, "Matematica", "multiplicacion", 1),
		(2, "Matematica", "Division", 1),
        (3, "Lengua", "Sujeto y predicado",2),
        (4, "Ingles", "simple past",3),
        (5, "Matematica", "Secciones Conicas",1);

