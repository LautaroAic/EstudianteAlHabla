DROP DATABASE IF EXISTS Estudiante;
CREATE database Estudiante;
use Estudiante;
create table usuario(
id INT AUTO_INCREMENT,
nombre_usuario VARCHAR (20),
correo VARCHAR (50),
usuarios VARCHAR (50),
contrasena VARCHAR (50),
PRIMARY KEY (id));

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


INSERT INTO ESTUDIANTE (id, nombre_usuario, correo, usuario, contrasena)
VALUES (1, "Juan", "Alberto@gmail.com", "Juanito", "messi"),
	(2, "Sara", "Abaro@gmail.com", "Sara_A", "messigood"),
    (3, "Renata", "Alberiño@gmail.com", "RenataR", "messirve"),
    (4, "Estanislao", "Alvaro@gmail.com", "Estan", "messiento"),
    (5, "Edson", "Albere@gmail.com", "nosdE", "messiientobien");

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

