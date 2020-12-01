
CREATE TABLE DEPARTAMENTO (
                codigo INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                PRIMARY KEY (codigo)
);


CREATE TABLE FUNCIONARIO (
                matricula INT NOT NULL,
                codigo INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                gerente INT,
                departamento INT NOT NULL,
                salario DECIMAL(100) NOT NULL,
                Parent_matricula_1 INT NOT NULL,
                PRIMARY KEY (matricula, codigo)
);
