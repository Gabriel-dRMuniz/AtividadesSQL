CREATE TABLE Filmes(
IdFilme INT PRIMARY KEY,
Titulo NVARCHAR(100),
Genero NVARCHAR(100),
Ano DATE
);

CREATE TABLE Sessoes(
IdSessao INT PRIMARY KEY,
IdFilme INT,
FOREIGN KEY(IdFilme) REFERENCES Filmes(IdFilme),
Data DATE,
Hora TIME
);

INSERT INTO Filmes (IdFilme, Titulo, Genero, Ano) VALUES
(1, 'A Origem', 'Ficção Científica', '2010-01-01'),
(2, 'O Poderoso Chefão', 'Crime', '1972-01-01'),
(3, 'Vingadores: Ultimato', 'Ação', '2019-01-01'),
(4, 'Forrest Gump', 'Drama', '1994-01-01'),
(5, 'Interestelar', 'Ficção Científica', '2014-01-01'),
(6, 'O Lobo de Wall Street', 'Biografia', '2013-01-01'),
(7, 'Cidade de Deus', 'Drama', '2002-01-01'),
(8, 'Pantera Negra', 'Ação', '2018-01-01'),
(9, 'Parasita', 'Suspense', '2019-01-01'),
(10, 'Matrix', 'Ficção Científica', '1999-01-01'),
(11, 'Gladiador', 'Ação', '2000-01-01'),
(12, 'Coringa', 'Drama', '2019-01-01'),
(13, 'Up: Altas Aventuras', 'Animação', '2009-01-01'),
(14, 'Homem-Aranha: Sem Volta Para Casa', 'Ação', '2021-01-01'),
(15, 'A Viagem de Chihiro', 'Animação', '2001-01-01'),
(16, 'Duna', 'Ficção Científica', '2021-01-01'),
(17, 'O Senhor dos Anéis: A Sociedade do Anel', 'Fantasia', '2001-01-01'),
(18, 'Batman: O Cavaleiro das Trevas', 'Ação', '2008-01-01'),
(19, 'La La Land', 'Musical', '2016-01-01'),
(20, 'Clube da Luta', 'Drama', '1999-01-01'),
(21, 'Avatar', 'Ficção Científica', '2009-01-01'),
(22, 'Titanic', 'Romance', '1997-01-01'),
(23, 'Jogos Vorazes', 'Aventura', '2012-01-01'),
(24, 'Divertida Mente', 'Animação', '2015-01-01'),
(25, 'O Grande Gatsby', 'Drama', '2013-01-01'),
(26, 'Whiplash', 'Drama', '2014-01-01'),
(27, 'Os Incríveis', 'Animação', '2004-01-01'),
(28, 'John Wick', 'Ação', '2014-01-01'),
(29, 'O Rei Leão', 'Animação', '1994-01-01'),
(30, 'Django Livre', 'Faroeste', '2012-01-01');

INSERT INTO Sessoes (IdSessao, IdFilme, Data, Hora) VALUES
(1, 1, '2025-08-14', '18:30:00'),
(2, 2, '2025-08-14', '20:00:00'),
(3, 3, '2025-08-15', '21:15:00'),
(4, 4, '2025-08-15', '17:00:00'),
(5, 5, '2025-08-16', '19:45:00'),
(6, 6, '2025-08-16', '22:00:00'),
(7, 7, '2025-08-17', '16:30:00'),
(8, 8, '2025-08-17', '20:15:00'),
(9, 9, '2025-08-18', '18:00:00'),
(10, 10, '2025-08-18', '21:00:00'),
(11, 11, '2025-08-19', '19:00:00'),
(12, 12, '2025-08-19', '22:15:00'),
(13, 13, '2025-08-20', '16:00:00'),
(14, 14, '2025-08-20', '20:30:00'),
(15, 15, '2025-08-21', '17:45:00'),
(16, 16, '2017-07-12', '19:00:00'),
(17, 17, '2016-11-05', '20:30:00'),
(18, 18, '2015-06-20', '18:45:00'),
(19, 19, '2014-09-14', '21:00:00'),
(20, 20, '2013-03-03', '22:15:00'),
(21, 21, '2017-12-01', '17:45:00'),
(22, 22, '2016-04-09', '20:00:00'),
(23, 23, '2015-08-22', '19:30:00'),
(24, 24, '2012-10-30', '16:00:00'),
(25, 25, '2014-06-18', '21:30:00'),
(26, 26, '2013-01-25', '18:00:00'),
(27, 27, '2011-12-10', '17:30:00'),
(28, 28, '2025-08-22', '20:15:00'), 
(29, 29, '2025-08-23', '15:00:00'), 
(30, 30, '2025-08-24', '19:15:00'); 


--Mostrar todos os filmes do gênero "Ação".
SELECT * FROM Filmes
WHERE Genero='Ação'


--Mostrar todas as sessões de filmes que estrearam após 2020.
SELECT * FROM Sessoes 
WHERE Data >=GETDATE()