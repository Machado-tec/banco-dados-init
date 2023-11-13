/* Create a table */

CREATE TABLE
    DISCIPLINA(
        CodD char(2) PRIMARY KEY,
        NomeD varchar(60),
        CargaD int,
        AreaD varchar(60),
        PreReqD char(2),
        FOREIGN KEY (PreReqD) REFERENCES DISCIPLINA(CodD)
    );

/* Create few records in this table */

INSERT INTO DISCIPLINA
VALUES
(
        'D1',
        'TLP1',
        2,
        'Computação',
        'D2'
    );

INSERT INTO DISCIPLINA
VALUES
(
        'D2',
        'Cálculo 1',
        4,
        'Matemática',
        NULL
    );

INSERT INTO DISCIPLINA
VALUES
(
        'D3',
        'Inglês',
        2,
        'Humanas',
        NULL
    );

INSERT INTO DISCIPLINA
VALUES
(
        'D4',
        'Ed Física',
        3,
        'Saúde',
        NULL
    );

INSERT INTO DISCIPLINA
VALUES
(
        'D5',
        'G Analítica',
        5,
        'Matemática',
        'D2'
    );

INSERT INTO DISCIPLINA
VALUES
(
        'D6',
        'Projeto Final',
        6,
        NULL,
        'D1'
    );