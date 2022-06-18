CREATE TABLE Classes(
	ClasseID INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) UNIQUE NOT NULL,
	Descricao VARCHAR(255)
)

CREATE TABLE Personagem(
	PersonagemID INT PRIMARY KEY IDENTITY,
	NomePersonagem VARCHAR(15) UNIQUE NOT NULL,
	UsuarioID INT UNIQUE FOREIGN KEY REFERENCES Usuarios(UsuarioID),
	ClasseID INT FOREIGN KEY REFERENCES Classes(ClasseID)
)

CREATE TABLE Habilidades(
	HabilidadeID INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(100) UNIQUE NOT NULL
)

CREATE TABLE ClasseHabilidade(
	ClasseID INT FOREIGN KEY REFERENCES Classes(ClasseID),
	HabilidadeID INT FOREIGN KEY REFERENCES Habilidades(HabilidadeID)
)
INSERT INTO Usuarios (Email, Senha) VALUES ('jessicag@gmail.com','123456')
INSERT INTO	Classes (Nome, Descricao) VALUES ('El�trico Puro','O tipo el�trico � super efetivo contra os tipos Voador, �gua; 
� pouco efetivo contra: Drag�o, El�trico e Planta; N�o tem efeito contra: Terrestre ; Tem resist�ncia a: El�trico, Voador e A�o; Tem fraqueza a: Terrestre ; N�o s�o imune a nenhum outro tipo')
INSERT INTO Habilidades (Nome) VALUES ('Est�tico'),('P�ra raio')
INSERT INTO Personagem (NomePersonagem, UsuarioID, ClasseID) VALUES ('Raiuchu', 1, 1)
INSERT INTO ClasseHabilidade (ClasseID, HabilidadeID) VALUES (1,1), (1,2)

INSERT INTO Usuarios (Email, Senha) VALUES ('caique@gmail.com','654321')
INSERT INTO	Classes (Nome, Descricao) VALUES ('Voador Puro',' O tipo voador � super efetivo contra: Inseto, Lutador e Planta; � pouco efetivo contra: El�trico, Pedra e A�o;
Tem resist�ncia a: Inseto, Lutador e Planta;Tem fraqueza a: El�trico, Gelo e Pedra;� imune a: Terrestre;')
INSERT INTO Habilidades (Nome) VALUES ('Super For�a'),('Multi Ataque')
INSERT INTO Personagem (NomePersonagem, UsuarioID, ClasseID) VALUES ('Tornadus', 2, 2)
INSERT INTO ClasseHabilidade (ClasseID, HabilidadeID) VALUES (2,3), (2,4)

INSERT INTO Usuarios (Email, Senha) VALUES ('bidu@gmail.com','789012')
INSERT INTO	Classes (Nome, Descricao) VALUES ('El�trico Vadoro','Decri��o a ser atualizada')
INSERT INTO Habilidades (Nome) VALUES ('Asas el�tricas')
INSERT INTO Personagem (NomePersonagem, UsuarioID, ClasseID) VALUES ('Emolga', 3, 3)
INSERT INTO ClasseHabilidade (ClasseID, HabilidadeID) VALUES (3,5)
INSERT INTO ClasseHabilidade (ClasseID, HabilidadeID) VALUES (3,1)

SELECT * FROM Usuarios
SELECT * FROM Classes
SELECT * FROM Habilidades
SELECT * FROM Personagem
SELECT * FROM ClasseHabilidade