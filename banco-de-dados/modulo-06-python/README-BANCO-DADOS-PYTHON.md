### Vídeo 001 - Banco de Dados com Python

Introdução a conexão do Sqlite com Python. 

- Como criar um novo Banco de Dados (Database) com Python
- Como se conectar ao Database
- Como Criar tabelas
- Como Inserir Dados
- Como selecionar os dados inseridos.

'''
Cidades:
id
nome

Pessoas:
id
Nome
Idade
Cidade_id
'''


### Vídeo 002 - Criando Tabelas com Python

'''
cur.execute("""
    CREATE TABLE.... ();
""")
'''


### Vídeo 003 - Insert Into 

cur.execute("""
    INSERT INTO .... ();
""")


### Vídeo 004 - Seleção de dados

'''
cur.fetchone() --> só o primeiro resultado
cur.fetchmany(2) --> os primeiros 2
cur.fetchall() --> todos resultados 
'''

### Vídeo 005 - Uso dos resultados de query.

'''
Resultados de uma query con.fetchxxx ==> lista
'''
