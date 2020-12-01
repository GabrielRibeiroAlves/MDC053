
CREATE TABLE ALUNO (
                id_aluno INT AUTO_INCREMENT NOT NULL,
                nome_aluno VARCHAR(100) NOT NULL,
                email_aluno VARCHAR(100),
                fone_contato CHAR(14) NOT NULL,
                PRIMARY KEY (id_aluno)
);


CREATE TABLE PROFESSOR (
                id_professor INT AUTO_INCREMENT NOT NULL,
                nome_professor VARCHAR(100) NOT NULL,
                titulacao_professor CHAR(3),
                PRIMARY KEY (id_professor)
);


CREATE TABLE Curso (
                id_curso INT AUTO_INCREMENT NOT NULL,
                nome_curso VARCHAR(100) NOT NULL,
                carga_horaria SMALLINT,
                PRIMARY KEY (id_curso)
);


CREATE TABLE Turma (
                id_turma_ INT NOT NULL,
                id_aluno INT NOT NULL,
                id_curso INT NOT NULL,
                id_professor INT NOT NULL,
                id_aluno_ INT NOT NULL,
                data_matricula DATE NOT NULL,
                PRIMARY KEY (id_turma_, id_aluno, id_curso, id_professor)
);


ALTER TABLE Turma ADD CONSTRAINT aluno_turma_fk
FOREIGN KEY (id_aluno)
REFERENCES ALUNO (id_aluno)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Turma ADD CONSTRAINT professor_turma_fk
FOREIGN KEY (id_professor)
REFERENCES PROFESSOR (id_professor)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Turma ADD CONSTRAINT curso_turma_fk
FOREIGN KEY (id_curso)
REFERENCES Curso (id_curso)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
