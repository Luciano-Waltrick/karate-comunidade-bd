-- Inserir participante
INSERT INTO Participante (nome, idade, telefone, email) VALUES ('João Silva', 15, '123456789', 'joao@email.com');

-- Atualizar participante
UPDATE Participante SET idade = 16 WHERE id = 1;

-- Deletar participante
DELETE FROM Participante WHERE id = 1;

-- Consulta de presença
SELECT p.nome, a.data, a.horario
FROM Presenca pr
JOIN Participante p ON p.id = pr.id_participante
JOIN Aula a ON a.id = pr.id_aula;
