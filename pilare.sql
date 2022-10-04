CREATE DATABASE pilares;
USE pilares;
CREATE TABLE profesor(
  idprof INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  Nombre VARCHAR(10),
  Area VARCHAR(20)
  );
  CREATE TABLE Alumno(
    idalumno INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(20),
    FechaNac DATE
    );
    CREATE TABLE Taller(
      idtaller INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
      Nombre VARCHAR(20),
      Area VARCHAR (20),
      Capacidad INT,
      idprof INT UNSIGNED,
      FOREIGN KEY (idprof)REFERENCES profesor (idprof)
      );
      CREATE TABLE Alumno_asistir_Taller(
        idalumno INT UNSIGNED,
        idtaller INT UNSIGNED,
        fecha DATE,
        FOREIGN KEY (idalumno) REFERENCES Alumno (idalumno),
        FOREIGN KEY (idtaller) REFERENCES Taller (idtaller),
        PRIMARY KEY (idalumno,idtaller)
        );
        