CREATE TABLE Participante (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT NULL,
  idade INTEGER,
  telefone TEXT,
  email TEXT
);

CREATE TABLE Aula (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  data DATE NOT NULL,
  horario TEXT,
  local TEXT
);

CREATE TABLE Presenca (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  id_participante INTEGER,
  id_aula INTEGER,
  FOREIGN KEY (id_participante) REFERENCES Participante(id),
  FOREIGN KEY (id_aula) REFERENCES Aula(id)
);

CREATE TABLE Conteudo (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  titulo TEXT NOT NULL,
  descricao TEXT,
  link TEXT
);
