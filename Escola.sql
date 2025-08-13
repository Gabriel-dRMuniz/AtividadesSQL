CREATE TABLE Alunos(
IdAlunos INT PRIMARY KEY,
Nome NVARCHAR(255),
DataNascimento Date
);


CREATE TABLE Notas(
IdNota INT PRIMARY KEY,
IdAlunos INT,
FOREIGN KEY(IdAlunos) REFERENCES Alunos(IdAlunos),
Disciplina NVARCHAR(255),
Nota DECIMAL NULL
);



INSERT INTO Alunos (IdAlunos, Nome, DataNascimento) VALUES
(1, 'Ana Silva', '2001-05-15'),
(2, 'Bruno Costa', '2000-11-22'),
(3, 'Carla Santos', '1999-07-03'),
(4, 'Daniel Oliveira', '2002-02-28'),
(5, 'Elisa Martins', '2001-09-10'),
(6, 'Felipe Rocha', '2000-04-17'),
(7, 'Gabriela Lima', '1998-12-05'),
(8, 'Henrique Alves', '2003-03-21'),
(9, 'Isabela Moreira', '2001-06-30'),
(10, 'Jo�o Pereira', '1999-08-14'),
(11, 'Karina Ferreira', '2002-10-19'),
(12, 'Lucas Dias', '2000-01-25'),
(13, 'Mariana Souza', '1998-11-02'),
(14, 'Nicolas Fernandes', '2003-07-09'),
(15, 'Olivia Ribeiro', '2001-04-11'),
(16, 'Paulo Henrique', '2002-05-22'),
(17, 'Renata Gomes', '2000-08-13'),
(18, 'S�rgio Lima', '1999-12-01'),
(19, 'Tatiana Costa', '2001-03-29'),
(20, 'Vitor Barbosa', '2003-07-15'),
(21, 'Wagner Freitas', '1998-11-25'),
(22, 'Yara Almeida', '2002-09-10'),
(23, 'Zeca Moraes', '2000-04-05'),
(24, 'Aline Cardoso', '2001-06-17'),
(25, 'Brenda Ribeiro', '1999-10-08'),
(26, 'Caio Martins', '2003-02-14'),
(27, 'D�bora Fernandes', '2000-07-30'),
(28, 'Eduardo Souza', '1998-05-19'),
(29, 'Fernanda Nunes', '2002-12-11'),
(30, 'Gustavo Pereira', '2001-01-27'),
(31, 'Helena Castro', '2002-03-12'),
(32, 'Igor Menezes', '2001-07-25'),
(33, 'J�lia Andrade', '2000-11-30'),
(34, 'Kevin Torres', '2003-01-18'),
(35, 'Larissa Campos', '1999-09-14'),
(36, 'Mateus Ribeiro', '2002-06-21'),
(37, 'Nat�lia Santos', '2000-12-02'),
(38, 'Ot�vio Almeida', '2001-04-07'),
(39, 'Patr�cia Duarte', '1998-10-28'),
(40, 'Rafael Lopes', '2003-05-09'),
(41, 'Sabrina Moura', '2002-08-16'),
(42, 'Tiago Fernandes', '2001-03-05'),
(43, 'Vanessa Silva', '1999-07-23'),
(44, 'William Costa', '2000-01-31'),
(45, 'Yasmin Oliveira', '2002-09-12');

INSERT INTO Notas (IdNota, IdAlunos, Disciplina, Nota) VALUES
(1, 1, 'Hist�ria', 7.8),
(2, 2, 'Matem�tica', 7.0),
(3, 3, 'Portugu�s', 7.5),
(4, 4, 'Matem�tica', 6.5),
(5, 5, 'Portugu�s', 8.0),
(6, 6, 'Hist�ria', 7.2),
(7, 7, 'Matem�tica', 9.1),
(8, 8, 'Portugu�s', 6.2),
(9, 9, 'Hist�ria', 7.9),
(10, 10, 'Portugu�s', 7.6),
(11, 11, 'Matem�tica', 8.0),
(12, 12, 'Hist�ria', 7.5),
(13, 13, 'Portugu�s', 9.2),
(14, 14, 'Matem�tica', 9.5),
(15, 15, 'Hist�ria', 7.3),
(16, 16, 'Matem�tica', 6.4),
(17, 17, 'Portugu�s', 8.1),
(18, 18, 'Hist�ria', 5.9),
(19, 19, 'Matem�tica', 7.3),
(20, 20, 'Portugu�s', 6.8),
(21, 21, 'Hist�ria', 7.5),
(22, 22, 'Matem�tica', 8.0),
(23, 23, 'Portugu�s', 6.2),
(24, 24, 'Hist�ria', 5.5),
(25, 25, 'Matem�tica', 7.9),
(26, 26, 'Portugu�s', 6.7),
(27, 27, 'Hist�ria', 7.1),
(28, 28, 'Matem�tica', 5.8),
(29, 29, 'Portugu�s', 7.4),
(30, 30, 'Hist�ria', 6.5),

(46, 31, 'Matem�tica', 7.5),
(47, 32, 'Portugu�s', NULL),
(48, 33, 'Hist�ria', 8.2),
(49, 34, 'Matem�tica', NULL),
(50, 35, 'Portugu�s', 6.9),
(51, 36, 'Hist�ria', 7.1),
(52, 37, 'Matem�tica', 5.8),
(53, 38, 'Portugu�s', NULL),
(54, 39, 'Hist�ria', 6.4),
(55, 40, 'Matem�tica', 7.0),
(56, 41, 'Portugu�s', 8.3),
(57, 42, 'Hist�ria', NULL),
(58, 43, 'Matem�tica', 6.7),
(59, 44, 'Portugu�s', 7.9),
(60, 45, 'Hist�ria', NULL);


---Mostrar todos os alunos e suas notas.
SELECT *
FROM Alunos
INNER JOIN Notas ON Alunos.IdAlunos=Notas.IdAlunos

--Mostrar a m�dia das notas por disciplina.
--Hist�ria
SELECT AVG(Nota) NotaMediaHistoria FROM Notas
WHERE Disciplina='Hist�ria'
--Portugu�s
SELECT AVG(Nota) NotaMediaPortugues FROM Notas
WHERE Disciplina='Portugu�s'
--Matem�tica
SELECT AVG(Nota) NotaMediaMatematica FROM Notas
WHERE Disciplina='Matem�tica'


--Mostrar apenas os alunos com m�dia acima de 7.
SELECT *
FROM Alunos
INNER JOIN Notas ON Alunos.IdAlunos=Notas.IdAlunos
WHERE Nota>=7


--Listar os alunos sem nenhuma nota cadastrada.
SELECT *
FROM Alunos
INNER JOIN Notas ON Alunos.IdAlunos=Notas.IdAlunos
WHERE Nota IS NULL;




