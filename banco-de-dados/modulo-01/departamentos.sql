-- Um para Um com Gerente x Departamento
BEGIN TRANSACTION;
DROP TABLE IF EXISTS DEPARTAMENTOS;
CREATE TABLE DEPARTAMENTOS (
    id Integer Primary Key, 
    nome Text, 
    gerentes_id INTEGER,
    FOREIGN KEY (gerentes_id) REFERENCES gerentes(id)
);
INSERT INTO DEPARTAMENTOS VALUES(1,'Produção',3);
INSERT INTO DEPARTAMENTOS VALUES(2,'Marketing',1);
COMMIT;