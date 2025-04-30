CREATE TABLE curso (
    curso_id INT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(100)
);

CREATE TABLE estudante (
    estudante_id INT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE curso_estudante (
    curso_id INT,
    estudante_id INT,
    PRIMARY KEY (curso_id, estudante_id),
    FOREIGN KEY (curso_id) REFERENCES curso(curso_id),
    FOREIGN KEY (estudante_id) REFERENCES estudante(estudante_id)
);

