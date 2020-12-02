
CREATE TABLE PESSOA (
                id INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                PRIMARY KEY (id)
);


CREATE TABLE JURIDICA (
                id INT NOT NULL,
                sexo CHAR(1),
                cnpj CHAR(14) NOT NULL,
                PRIMARY KEY (id)
);


CREATE TABLE FISICA_ (
                id INT NOT NULL,
                sexo CHAR(1),
                cpf CHAR(11) NOT NULL,
                PRIMARY KEY (id)
);


CREATE TABLE ENDERECO (
                id INT NOT NULL,
                cep CHAR NOT NULL,
                cidade VARCHAR(30),
                uf CHAR(2) NOT NULL,
                logradouro VARCHAR(100),
                numero INT,
                PRIMARY KEY (id)
);
