CREATE DATABASE mucis;
USE mucis;

CREATE TABLE fall2016 (
cID int auto_increment NOT NULL,
cName varchar(64),
cProfessor varchar(32),
cCredits int,
cType varchar(12),
PRIMARY KEY (cID)
);

INSERT INTO fall2016 (cName, cProfessor, cCredits, cType) VALUES ('CIS2206: Busn Progm Concpt', 'Prof Phillips', 3, 'Lecture');
INSERT INTO fall2016 (cName, cProfessor, cCredits, cType) VALUES ('CIS4309: eCommerce', 'Dr. Sim', 3, 'Online');
INSERT INTO fall2016 (cName, cProfessor, cCredits, cType) VALUES ('CIS4460: Syst Anlys Desgn', 'Dr. Liu', 3, 'Lecture');
INSERT INTO fall2016 (cName, cProfessor, cCredits, cType) VALUES ('CIS3390: Networking', 'Dr. Liu', 3, 'Lecture');
INSERT INTO fall2016 (cName, cProfessor, cCredits, cType) VALUES ('ENG3313: Comp 2', 'Prof Sulv-Blum', 3, 'Online');
INSERT INTO fall2016 (cName, cProfessor, cCredits, cType) VALUES ('PHL2201: Intro to Phil', 'Dr. Newman', 3, 'Lecture');

SELECT * FROM fall2016;