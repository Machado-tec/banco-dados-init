-- Um para Um com Gerente x Departamento
BEGIN TRANSACTION;
DROP TABLE IF EXISTS MARCAS;
CREATE TABLE MARCAS (
    id Integer Primary Key, 
    nome Text
);
INSERT INTO MARCAS VALUES(1,'Dell');
INSERT INTO MARCAS VALUES(2,'Apple');
COMMIT;

