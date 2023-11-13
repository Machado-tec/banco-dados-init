
pedidos
-
id int pk
data date
vendedor_id int FK >- vend.id
cliente_id int FK >- cli.id

vend
-
id int pk
nome character 

cli
-
id int pk
nome character 

ites_pedido
-
id int pk
pedidos_id int FK >- pedidos.id
carros_id int FK >- carros.id


carros
-
id int pk 
nome character
estoque_id int FK - estoque.id

estoque
-
id int pk
localizacao character
saldo_em_estoque int 
