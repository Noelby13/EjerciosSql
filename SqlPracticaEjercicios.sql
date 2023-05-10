create database BDMonitores
go 

use BDMonitores
go

-- Crear tabla Estudiantes
CREATE TABLE Estudiantes (
    ID_estudiante int PRIMARY KEY,
    IDUCA nvarchar(9) not null unique,
    Nombre nvarchar(50),
    Apellido nvarchar(50),
    FechaNac datetime,
    Correo_electronico nvarchar(100),
    Telefono nvarchar(20),
    Carrera nvarchar(50),
    Activo bit default 'true'
);

-- Crear tabla Clases
CREATE TABLE Clases (
    ID_clase int PRIMARY KEY,
    Codigo_clase nvarchar(20) unique not null,
    Nombre_clase nvarchar(50) not null,
    Horario nvarchar(50)
);

-- Crear tabla Monitores
CREATE TABLE Monitores (
    ID_monitor int PRIMARY KEY,
    ID_estudiante int,
    ID_clase int,
    Anio_en_curso int,
    Semestre_en_curso nvarchar(20),
    FOREIGN KEY (ID_estudiante) REFERENCES Estudiantes(ID_estudiante),
    FOREIGN KEY (ID_clase) REFERENCES Clases(ID_clase)
);


INSERT INTO Estudiantes(ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera) 
VALUES 
(1, N'000033172', N'Carlos Fernando', N'Aguilar Gonzalez', '2002/07/10', N'carlos.aguilar@uca.edu.ni', '87654321', N'Ingeniería en Sistemas'),
(2, N'000033173', N'Isabel Denisse', N'Aguilar Vilchez', '2001/02/18', N'isabel.aguilar@uca.edu.ni', '71234567', N'Ingeniería en Sistemas'),
(3, N'000033174', N'Oscar Ivan', N'Alvarado Jiron', '2003/09/05', N'oscar.alvarado@uca.edu.ni', '76543210', N'Ingeniería Industrial'),
(4, N'000033175', N'Marcello Josue', N'Alvarez Gonzalez', '2000/12/30', N'marcello.alvarez@uca.edu.ni', '71235867', N'Ingeniería Civil'),
(5, N'000033176', N'Eduardo Antonio', N'Barrera Gonzalez', '2004/06/22', N'eduardo.barrera@uca.edu.ni', '75438291', N'Ingeniería en Sistemas');

INSERT INTO Estudiantes(ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera) 
VALUES 
(6, N'000033177', N'Harry Enrique', N'Bodan Navarro', '2002/04/12', N'harry.bodan@uca.edu.ni', '78451290', N'Ingeniería en Sistemas'),
(7, N'000033178', N'Bryan Alfell', N'Carrazco', '2004/01/22', N'bryan.carrazco@uca.edu.ni', '73516240', N'Ingeniería Industrial'),
(8, N'000033179', N'Carlos Eduardo', N'Chavarria Centeno', '2001/06/03', N'carlos.chavarria@uca.edu.ni', '73815249', N'Ingeniería en Sistemas'),
(9, N'000033180', N'Jorge Evaristo', N'Garcia Flores', '2003/09/18', N'jorge.garcia@uca.edu.ni', '71254938', N'Ingeniería Civil'),
(10, N'000033181', N'Andrew Jahaziel', N'Garcia Morales', '2000/11/02', N'andrew.garcia@uca.edu.ni', '78492130', N'Ingeniería Industrial');


INSERT INTO Estudiantes(ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera) 
VALUES 
(11, N'000033182', N'Bradly Antonio', N'Gutierrez Cordoba', '2002/02/14', N'bradly.gutierrez@uca.edu.ni', '72849531', N'Ingeniería en Sistemas'),
(12, N'000033183', N'Yahir Antonio', N'Gutierrez Mejia', '2001/08/19', N'yahir.gutierrez@uca.edu.ni', '76583249', N'Ingeniería Civil'),
(13, N'000033184', N'Cristhian Geovanny', N'Izaguirre Chavarria', '2000/07/31', N'cristhian.izaguirre@uca.edu.ni', '71843965', N'Ingeniería Industrial'),
(14, N'000033185', N'Fernando Martin', N'Jimenez Aburto', '2003/05/09', N'fernando.jimenez@uca.edu.ni', '71284639', N'Ingeniería en Sistemas'),
(15, N'000033186', N'Andre Enmanuel', N'Joiner Angulo', '2004/03/22', N'andre.joiner@uca.edu.ni', '78239164', N'Ingeniería Civil');

INSERT INTO Estudiantes(ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera) 
VALUES 
(16, N'000033187', N'Maria Paula', N'Lopez Garcia', '2003/11/01', N'maria.lopez@uca.edu.ni', '71692843', N'Ingeniería en Sistemas'),
(17, N'000033188', N'Norman Santiago', N'Manzanares Peña', '2001/04/27', N'norman.manzanares@uca.edu.ni', '76923481', N'Ingeniería Industrial'),
(18, N'000033189', N'Maria Eugenia', N'Martinez Martinez', '2002/09/15', N'maria.martinez@uca.edu.ni', '73981524', N'Ingeniería Civil'),
(19, N'000033190', N'Maria Regina', N'Medrano Flores', '2004/02/08', N'maria.medrano@uca.edu.ni', '75893421', N'Ingeniería en Sistemas'),
(20, N'000033191', N'Maria Alessandra', N'Mejia Navarro', '2000/06/17', N'maria.mejia@uca.edu.ni', '74892173', N'Ingeniería Civil');



INSERT INTO Estudiantes(ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera) 
VALUES 
(21, N'000033192', N'Francisco De Jesus', N'Melendez Simplina', '2001/12/30', N'francisco.melendez@uca.edu.ni', '76843219', N'Ingeniería Industrial'),
(22, N'000033193', N'Jose Miguel', N'Midence Zamora', '2003/07/11', N'jose.midence@uca.edu.ni', '79651824', N'Ingeniería en Sistemas'),
(23, N'000033194', N'Osmar Adrian', N'Mora Cerna', '2000/08/22', N'osmar.mora@uca.edu.ni', '71648293', N'Ingeniería Civil'),
(24, N'000033195', N'Astrid Carolina', N'Morales Membreño', '2001/03/09', N'astrid.morales@uca.edu.ni', '78652914', N'Ingeniería Industrial'),
(25, N'000033196', N'Andrea Isabella', N'Nuñez Ruiz', '2004/09/01', N'andrea.nunez@uca.edu.ni', '74921365', N'Ingeniería en Sistemas');

INSERT INTO Estudiantes(ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera) 
VALUES 
(26, N'000033197', N'Marcos Alexander', N'Osorio Sevilla', '2000/05/17', N'marcos.osorio@uca.edu.ni', '76891546', N'Ingeniería en Sistemas'),
(27, N'000033198', N'Abdiel Antonio', N'Pacheco Mairena', '2003/01/25', N'abdiel.pacheco@uca.edu.ni', '76982471', N'Ingeniería en Sistemas'),
(28, N'000033199', N'Eliseo Josias', N'Paz Ocampo', '2001/09/13', N'eliseo.paz@uca.edu.ni', '78756894', N'Ingeniería Industrial'),
(29, N'000033200', N'Flabia Anayaci', N'Perez Herrera', '2002/11/28', N'flabia.perez@uca.edu.ni', '74851296', N'Ingeniería Industrial'),
(30, N'000033201', N'Jose Carlos', N'Perez Reinosa', '2004/03/02', N'jose.perez@uca.edu.ni', '78641589', N'Ingeniería en Sistemas');

INSERT INTO Estudiantes(ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera) 
VALUES 
(31, N'000033202', N'Lia Carolina', N'Ramirez Alvarez', '2001/07/22', N'lia.ramirez@uca.edu.ni', '76851296', N'Ingeniería en Sistemas'),
(32, N'000033203', N'Henry Noel', N'Reyes Duarte', '1999/11/25', N'henry.reyes14346@uca.edu.ni', '84981047', N'Ingeniería en Sistemas'),
(33, N'000033204', N'Abigail Eunice', N'Rocha Osejo', '2000/08/14', N'abigail.rocha@uca.edu.ni', '74891527', N'Ingeniería en Sistemas'),
(34, N'000033205', N'Marcelo Jose', N'Rodriguez Reyes', '2003/12/19', N'marcelo.rodriguez@uca.edu.ni', '78691547', N'Ingeniería en Sistemas'),
(35, N'000033206', N'Rene Nicolas', N'Sandoval Lagos', '2002/05/10', N'rene.sandoval@uca.edu.ni', '76895614', N'Ingeniería en Sistemas');

INSERT INTO Estudiantes(ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera) 
VALUES 
(36, N'000033207', N'Camilo Javier', N'Solis Mejia', '2001/09/03', N'camilo.solis@uca.edu.ni', '87895632', N'Ingeniería en Sistemas'),
(37, N'000033208', N'Josue Daniel', N'Sotelo Romero', '2003/06/29', N'josue.sotelo@uca.edu.ni', '75211564', N'Ingeniería en Sistemas'),
(38, N'000033209', N'Dayer Phillip', N'Torres Berrios', '2002/03/12', N'dayer.torres@uca.edu.ni', '78691254', N'Ingeniería en Sistemas'),
(39, N'000033210', N'Luswi Danilo', N'Torres Pomarez', '2004/02/08', N'luswi.torres@uca.edu.ni', '76895423', N'Ingeniería en Sistemas'),
(40, N'000033211', N'Jonathan Armando', N'Zuniga Rodriguez', '2000/11/15', N'jonathan.zuniga@uca.edu.ni', '76895324', N'Ingeniería en Sistemas');


INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES
(1, 'B101CAL', 'Cálculo I', 'Lunes a Viernes 8:00 AM - 10:00 AM'),
(2, 'B102ALG', 'Álgebra Lineal', 'Lunes a Viernes 10:00 AM - 12:00 PM'),
(3, 'B103FIS', 'Física I', 'Lunes a Viernes 12:00 PM - 2:00 PM'),
(4, 'B104QUI', 'Química General', 'Lunes a Viernes 2:00 PM - 4:00 PM'),
(5, 'B105ING', 'Introducción a la Ingeniería', 'Lunes a Viernes 4:00 PM - 6:00 PM');

INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario) VALUES
(6, 'B106EST', 'Estadística', 'Lunes a Viernes 8:00 AM - 10:00 AM'),
(7, 'B107PRO', 'Programación I', 'Lunes a Viernes 10:00 AM - 12:00 PM'),
(8, 'B108ELE', 'Electromagnetismo', 'Lunes a Viernes 12:00 PM - 2:00 PM'),
(9, 'B109MAT', 'Materiales de Ingeniería', 'Lunes a Viernes 2:00 PM - 4:00 PM'),
(10, 'B110ING', 'Proyecto de Ingeniería', 'Lunes a Viernes 4:00 PM - 6:00 PM');



INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso)
VALUES 
    (1, 10, 5, 2023, N'Primer Semestre'),
    (2, 20, 2, 2023, N'Primer Semestre'),
    (3, 30, 8, 2023, N'Primer Semestre'),
    (4, 5, 1, 2023, N'Primer Semestre'),
    (5, 15, 9, 2023, N'Primer Semestre');

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso)
VALUES 
    (6, 35, 3, 2023, N'Primer Semestre'),
    (7, 25, 7, 2023, N'Primer Semestre'),
    (8, 1, 4, 2023, N'Primer Semestre'),
    (9, 28, 6, 2023, N'Primer Semestre'),
    (10, 18, 10, 2023, N'Primer Semestre');

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso)
VALUES 
    (11, 10, 2, 2023, N'Segundo Semestre'),
    (12, 7, 9, 2023, N'Segundo Semestre'),
    (13, 31, 8, 2023, N'Segundo Semestre'),
    (14, 16, 5, 2023, N'Segundo Semestre'),
    (15, 38, 1, 2023, N'Segundo Semestre');

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso)
VALUES 
    (16, 3, 3, 2022, N'Primer Semestre'),
    (17, 18, 7, 2022, N'Primer Semestre'),
    (18, 35, 4, 2022, N'Primer Semestre'),
    (19, 22, 10, 2022, N'Primer Semestre'),
    (20, 13, 1, 2022, N'Primer Semestre');

UPDATE Monitores SET ID_estudiante = 1 WHERE ID_monitor = 1;

UPDATE Monitores SET ID_clase = 2 WHERE ID_monitor = 3;

UPDATE Monitores SET Anio_en_curso = 2023, Semestre_en_curso = N'Segundo Semestre' WHERE ID_monitor = 5;

UPDATE Monitores SET ID_estudiante = 10, ID_clase = 8 WHERE ID_monitor = 7;

UPDATE Monitores SET Anio_en_curso = 2022, Semestre_en_curso = N'Primer Semestre' WHERE ID_monitor = 9;

--claro no va a funcionar por que va existir conflicto
DELETE FROM Clases WHERE ID_clase IN (7, 8, 9, 10);



--Mostrar monitores de la clase que de ISI

Select E.Nombre from Monitores as M inner join Estudiantes as E  on M.ID_estudiante= E.ID_estudiante where E.Carrera ='Ingeniería en Sistemas'

Select E.Nombre, C.Nombre_clase, E.Correo_electronico from Monitores as M inner join Estudiantes as E  on M.ID_estudiante= E.ID_estudiante   inner join Clases as C on C.ID_clase = M.ID_clase

Select DISTINCT E.Nombre from Monitores as M inner join Estudiantes as E  on M.ID_estudiante= E.ID_estudiante where MONTH( FechaNac) = 5

Select E.Nombre from Monitores as M inner join Estudiantes as E  on M.ID_estudiante= E.ID_estudiante where Nombre like '%u%'

Select E.Nombre from Monitores as M inner join Estudiantes as E  on M.ID_estudiante= E.ID_estudiante  inner join Clases as C on C.ID_clase = M.ID_clase where c.Nombre_clase = 'Álgebra Lineal'

SELECT COUNT(*) FROM Monitores AS M INNER JOIN Estudiantes AS E ON M.ID_estudiante =E.ID_estudiante WHERE DATEDIFF(year, GETDATE(), E.FechaNac) >= 18

SELECT COUNT(*) FROM Monitores AS M INNER JOIN Estudiantes AS E ON M.ID_estudiante =E.ID_estudiante WHERE DATEDIFF(year, GETDATE(), E.FechaNac) <= 18

select Nombre_clase, Horario from Clases

ALTER TABLE Clases ADD activo BIT DEFAULT 1


select* from Clases 
SELECT Monitores.ID_monitor, Estudiantes.Nombre, Monitores.Anio_en_curso, Monitores.Semestre_en_curso, Estudiantes.Apellido, Clases.Nombre_clase, Clases.Horario
FROM     Clases INNER JOIN
                  Monitores ON Clases.ID_clase = Monitores.ID_clase INNER JOIN
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante