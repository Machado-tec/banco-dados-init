BEGIN TRANSACTION;
DROP TABLE IF EXISTS CIDADES;
CREATE TABLE CIDADES (id Integer Primary Key, nome Text);
INSERT INTO CIDADES VALUES(1,'Campo Grande');
INSERT INTO CIDADES VALUES(2,'Blumenau');
INSERT INTO CIDADES VALUES(3,'Joinville');
COMMIT;