CREATE TABLE ALUNO (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Matricula INT,
    Email VARCHAR(255),
    Endereco VARCHAR(255),
    Telefone VARCHAR(15)
);
INSERT INTO ALUNO (ID, Nome, Matricula, Email, Endereco, Telefone) VALUES
(1, 'João Carlos', 1234, 'Jcarlos@gmail.com', 'Rua 13 de maio', '(11)7825-4489'),
(2, 'José Vitor', 2345, 'Jvitor@gmail.com', 'Rua da Saudade', '(11)7825-6589'),
(3, 'Paulo André', 3456, 'Pandr@gmail.com', 'Rua do Sol', '(11)7825-4495');
