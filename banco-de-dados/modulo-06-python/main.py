import sqlite3

cnx = sqlite3.connect('modulo06.sqlite3')
cur = cnx.cursor()

cur.execute("""
    DROP TABLE IF EXISTS CIDADES; 
""")
cur.execute("""    
    CREATE TABLE CIDADES (
            CIDADE_ID INTEGER PRIMARY KEY AUTOINCREMENT,
            CIDADE_NOME TEXT NOT NULL
    );
""")

cur.execute("""
    DROP TABLE IF EXISTS PESSOAS; 
""")

cur.execute("""
    CREATE TABLE PESSOAS(
        PESSOA_ID INTEGER PRIMARY KEY AUTOINCREMENT,
        PESSOA_NOME TEXT NOT NULL,
        PESSOA_IDADE INTEGER, 
        PESSOA_CIDADE_ID INTEGER NOT NULL
    );
""")


# INSERT INTO

cur.execute("""
    INSERT INTO CIDADES(CIDADE_NOME) VALUES
    ('Guaratuba'),
    ('Joinville'),
    ('Itajaí'),
    ('Blumenau'),
    ('Florianopolis'),
    ('Balneário Camboriú');
""")

cnx.commit()

cur.execute("""
    INSERT INTO PESSOAS(PESSOA_NOME,PESSOA_IDADE,PESSOA_CIDADE_ID)
        VALUES
            ('Adriano Machado',47,1),
            ('Adriana',47,1),
            ('Karina',45,5),
            ('TARSIO',51,2),
            ('SAMIR',50,2),
            ('PEDRO',18,3),
            ('Andre',18,3),
            ('Tamires',18,3),
            ('MARIA',22,4),
            ('PATRICIA',14,2),
            ('PATRICIA',18,1);
""")
cnx.commit()


# Fetchone()

# cur.execute("SELECT * FROM CIDADES;")
# primeiro_resultado=cur.fetchone()
# print(f'\nPrimeira linha: {primeiro_resultado}')


# cur.execute("SELECT * FROM CIDADES;")
# resultado=cur.fetchmany(2)
# print(f'\nPrimeira e segunda linha: {resultado}')

# cur.execute("SELECT * FROM CIDADES;")
# resultado=cur.fetchall()
# print(f'\nTodas as Linhas: {resultado}')

cur.execute("""
    SELECT PESSOA_NOME,CIDADE_NOME FROM PESSOAS,CIDADES
        WHERE PESSOA_CIDADE_ID = CIDADE_ID;
""")
resultado=cur.fetchall()
print(f'\nTodas as Linhas Nome e Cidade: {resultado}')

