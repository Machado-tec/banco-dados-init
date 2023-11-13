# Usos Apropriados para SQLITE


### Client => Server 

- Mysql/MariaDB
- Oracle
- PostgreSQL

(Esforçam: Dados compartilhados em ambientes coporativos)

- Escalabilidade
- Simultaneidade
- Centralização
- Controle

### SqLite

- Armazenar dados localmente 
- Economia
- Eficiência
- Confiabilidade 
- Independencia 
- Simplicidade. 

SQLite não compete com os bancos de dados Client/Server
fopen()




### Situações em que o SQLite funciona bem


- Dispositivos Incorporados (Embedded devices)
- Internet das Coisas IOT

  - Client/Server -> Datacenter
  - SQLite -> dispositivos

- Formato de Arquivo do Alicativo**

- Sites
  - Trafego baixo -> Médio
  - https://www.sqlite.org


- Análises de Dados

- Cache para dados corporativos
  
- **Banco de dados do lado do servidor**
  
  - Base Principal/Bases externas 
    - Aplicativo 
      - Diversas bases SQLite Por usuário 
        - Aplicativo/API 
          - Diversos Usuários

- **Transferencia de dados**
- **Zip Files**
- **Bancos de dados internos ou temporários**
  - **Demos ou testes** 
- **Educação e Treinamento**
- **Extensões de SQL Experimental**

### Situações em que um RDBMS client/server pode funcionar melhor. 

**Aplicativos Client/Server**
**Sites de alto volume**
**Conjuntos de dados muito grandes**
**Alta simultaneidad**

### Lista de verificação para escolher o melhor mecanismo de banco de dados para a sua aplicação. 

#### Escolha cliente servidor se:
- **Os Dados são separados do aplicativo por uma rede?** 

- **Muitos escritores simultâneos?** 

- **Dados tipo XXG?** 

#### Caso contrario:
- **Escolha SQLITE**









































