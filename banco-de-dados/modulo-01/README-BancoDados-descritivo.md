# MODULO 01 
##  Videos: 
##  Aula 001 (Videos 000 - 001) 
##  Aula 002 (Videos 002 003 004 005)
##  Aula 003 (Videos 006 010)
### File: README-BancoDados-descritivo

Arquivo com apontamentos dos videos acima.
Autor: Adriano Machado 

# Introdução 
## video 000 

# Modulo 01 - Aula 01 - O que é Banco de Dados
## video 001 

### O que é?
#### Conjunto de informações organizadas em um formato onde os dados possam ser facilmente:
- Armazenados.
- gerenciados.
- atualizados.
- recuperados. 



### Tipos de Bancos de Dados?
#### Categorias (duas):
- Banco de dados Relacional
- Banco de dados Não relacional (NoSQL)

# Modulo 01 - Aula 02 - Estrutura de um Banco de Dados
## video 002

- Banco de Dados Relacional: Caracterizado pela forma como os dados são organizados.
- Tabelas respeitam um SCHEMA Determina como as tabelas devem ser. 
- Tabelas ou Entidade 
  
: id    : cpf	            : nome	    : idade :
:  1    : 123.456.789-11	: Adriano	: 18    :
:  2    : 123-555-777-12	: Karina	: 40    :

- Colunas ou Atributos 
- Linhas ou Tuplas 
  
## video 003

- Tipos de Dados:
  - Text 
  - Integer
  - Real
  - Null:

https://www.sqlite.org/datatype3.html 

## video 004

Chave Primaria - PK Primary Key - Ela serve para definir exclusividades dentro de uma tabela. Cada linha de nossa tabela é unica, PK. Só podemos definir uma unica coluna dentro da tabela como PK. Uma chave primaria pode ser com uma unica coluna ou composta por 2 colunas de nossa tabela. 

ID Abreviação de Identificação ID (criar uma sequencia automatica)

Regras:
- Deve ser única. 
- Nao pode mundar nunca. 
- Não pode ser nula. 


## video 005
Chave estrangeira (FK) (Foreign Key)

Pessoas:
: id    : cpf	            : nome	  : cidade_id :
:  1    : 123.456.789-11	: Adriano	: 1         :
:  2    : 123-555-777-12	: Karina	: 2         :
:  3    : 322-555-666-11  : Odineia : 1         :    

Cidades:
: id  : Cidade        : UF_id  :
: 1   : Campo Grande  : 2     :
: 2   : Joinville     : 1     :

Estado: 
: id  : Estado              : 
: 1   : Santa Catarina      : 
: 2   : Mato Grosso do Sul  : 


## Video 006 
# Relacionamento entre Tabelas / Entidades. 

O relacionamento é a associação entre as Tableas, que são conectadas por Chaves Primairas (PK), Chaves Estrangeiras (FK).

1:1 - Relacionamento em 1 linha de uma tabelas com 1 linha de outra tabelas.
1:N - Relacionamento de 1 linha de uma tabela com Muitas linhas de outras tabelas. 
M:N - Relacionamento de Muitas linhas de uma tabela com Muitas linhas de outras tabelas. 


# 1:1 - Relacionamento Um para um. 

1:1 - Gerentes x Departamentos 

Gerentes:
: id  : Nome      : 
: 1   : Hans      :
: 2   : Fritz     :

Departamentos:
: id  : Nome      : gerente_id : 
: 1   : Produção  : 1
: 2   : Marketing : 2


# Video 007
# 1:n - Relacionamento Um para Muitos

Marcas:
: id  : Nome      :
: 1   : Dell      :
: 2   : Apple     :

Produtos:
: id  : Nome      : marcas_id :
: 1   : teclado   : 1         :
: 2   : monitor   : 1         :
: 3   : iphone 7  : 2         :
: 4   : iphone 8  : 2         :


# Video 008
# M:N - Relacionamento de Muitos pra Muitos

Musica:
: id  :   nome  :  
: 1   : Highway to Hell                           :
: 2   : Stairway to Heaven                        :
: 3   : Another Dai In Paradise                   :
: 4   : Musica Ficticia Bon Scott+Phill Collins   :

Autores:
: id  : nome          :
: 1   : Bon Scott     :
: 2   : Angus Youg    : 
: 3   : Malcom Youg   :
: 4   : Robert Plant  :
: 5   : Jimmy Page    :
: 6   : Phill Collins : 

MusicasxAutores:
: id  : musica_id : autores_id  :
:  1  :     1     :   1         :
:  2  :     1     :   2         :
:  3  :     1     :   3         :
:  4  :     2     :   4         :
:  5  :     2     :   5         :
:  6  :     3     :   6         :
:  7        4     :   1         :
:  8  :     4     :   6         :


# Video 009
# Auto Relacionamento  
  Relacionamento de uma linha de uma mesma tabela com outra linha nesta tabela. 

Pessoas, Mae, Pai, Amigo 

Eu:  Adriano  
  Mae: Elvira  
  Pai: Carlos
  Irma: karina 
  Amigo: Samir 

Esposa: Odineia 
  Mae: Maria 
  Pai: Miguel
  
Irma: Karina
  Mae: Elvira
  Pai: Carlos



Pessoas:
: id    : nome	  : cidade_id : mae_id : pai_id :  amigo_id :
:  1    : Adriano	: 1         : 4      : 6      :  8        :
:  2    : Karina	: 2         : 4      : 6      :           :
:  3    : Odineia : 1         : 5      : 7      :           :
:  4    : Elvira  : 2         : 0      : 0      :           :
:  5    : Maria   : 1         : 0      : 0      :           :
:  6    : Carlos  : 2         : 0      : 0      :           :
:  7    : Miguel  : 0         : 0      : 0      :           :
:  8    : Samir   : 0         : 0      : 0      :           :

# video 010 
# Apresentação do DER de um auto-relacionamento (video009)

Apresentação dos DERs 
Resumo final do módulo 

















