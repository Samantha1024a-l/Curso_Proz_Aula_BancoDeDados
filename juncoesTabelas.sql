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

/* inner join
select nome_alunos , nome_disciplina
from alunos inner join disciplinas
on disciplinas.id_disciplina=alunos.disciplinas_id;*/

/* left join
select nome_alunos , nome_disciplina
from alunos left join disciplinas
on disciplinas.id_disciplina=alunos.disciplinas_id;*/

/*   rigth join
select nome_alunos , nome_disciplina
from alunos rigth join disciplinas
on disciplinas.id_disciplina=alunos.disciplinas_id;*/

/* union
select nome_alunos , nome_disciplina
from alunos left join disciplinas
on disciplinas.id_disciplina=alunos.disciplinas_id;
 union
select nome_alunos , nome_disciplina
from alunos rigth join disciplinas
on disciplinas.id_disciplina=alunos.disciplinas_id;*/



