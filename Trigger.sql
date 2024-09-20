CREATE TABLE disciplinas (
  id_disciplina int AUTO_INCREMENT PRIMARY KEY,
  name_disciplina VARCHAR(50) NOT NULL,
  nome_professor VARCHAR(50) NOT NULL
);
 create table alunos (
  id_alunos int AUTO_INCREMENT PRIMARY KEY,
  nome_alunos VARCHAR(50) NOT NULL,
  disciplinas_id int,
  constraint foreign key (disciplinas_id) 
  references disciplinas (id_disciplina)       
);

insert into disciplinas (name_disciplina, nome_professor)
    values
('banco de dados', 'Maria Alves'),
 ('Python', 'Pietro Souza'),
 ('POO', 'Bia Tavares');


insert into alunos (nome_alunos, disciplinas_id)
    values
    ('Cleiton', 2),
    ('Carol', null),
    ('Ruan', 2),
    ('Gabi', 1),
    ('Rian', null),
    ('Mia', 2),
    ('Malu', 1);

CREATE TABLE alunos_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    nome_aluno VARCHAR(50),
    disciplinas_id INT,
    data_insercao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TRIGGER after_insert_aluno
AFTER INSERT ON alunos
FOR EACH ROW
BEGIN
    INSERT INTO alunos_log (aluno_id, nome_aluno, disciplinas_id)
    VALUES (NEW.id_alunos, NEW.nome_alunos, NEW.disciplinas_id);
END;







