import sqlite3

cnx = sqlite3.connect('modulo06.sqlite3')
cur = cnx.cursor()

# cur.execute("SELECT * FROM CIDADES;")
# todos = cur.fetchall()
# # print(f'\nTodos: {todos}')
# # print(type(todos))

# for x, y in todos:
#     print(f'{x}:{y}')


cur.execute("SELECT * FROM PESSOAS;")
todos = cur.fetchall()
for x, y, z, w  in todos:
    print(f'{x}:{y}:{z}:{w}')