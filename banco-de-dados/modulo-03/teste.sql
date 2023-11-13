

BEGIN TRANSACTION;

DROP TABLE IF EXISTS PESSOAS;

CREATE TABLE PESSOAS (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    CPF         TEXT     NOT NULL,
    NOME        TEXT     NOT NULL,
    IDADE       INT      NOT NULL,
    ENDERECO    CHAR(50),
    CIDADE      TEXT,
    SALARIO     REAL
);


INSERT INTO PESSOAS (CPF, NOME, IDADE, ENDERECO, SALARIO)  
    VALUES
    ('123.456.789-22', 'Douglas',34, ' Rua Amazonas, 179', 100000.00),
    ('123.456.789-22', 'Kelly',33, ' Rua Amazonas, 179', 100000);

COMMIT;