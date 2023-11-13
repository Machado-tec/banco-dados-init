-- Um para Um com Gerente x Departamento
BEGIN TRANSACTION;
DROP TABLE IF EXISTS MUSICAS;
CREATE TABLE MUSICAS (
    id Integer Primary Key, 
    nome Text
);
INSERT INTO MUSICAS VALUES(1,'Highway to Hell');
INSERT INTO MUSICAS VALUES(2,'Stairway to Heaven');
INSERT INTO MUSICAS VALUES(3,'Another Dai In Paradise');
COMMIT;

