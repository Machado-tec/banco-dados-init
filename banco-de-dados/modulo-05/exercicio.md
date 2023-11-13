#### Exercicio de Fixação do Módulo 5 de Banco de Dados (intro)
#### Versão com ferramentas visuais. 
- Heidi SQL
- WorkBench Mysql 

Com o conhecimento que temos até aqui já podemos aprimorar nossos exercícios. Vamos criar e modelar uma base de dados com as seguintes premissas: 

    > Trata-se de uma base de dados para uma conveniência. Voalá! Com esta base de dados vamos poder gerar um cardápio eletronico e também gerar cupons fiscais ao final. 

    **NÃO CRIE os RELACIONAMENTOs** ENTRE TABELAS/ENTIDADES. 
    **VEREMOS ISTO ADIANTE. **

    > Tabelas:
        > *Produtos* (id,nome,valor_unitario) ex.: Refrigerante , Vinho, Cerveja, Vodka, 
        > *Prateleiras* (id, nome, localizacao) ex.: (prateleira frios, corredor 1), (prateleira salgados, balcao loja)
        > *CupomFiscal* ou Nota (id,data_emissao,numero(auto),cliente,atendente)
        > *ItensCupomFiscal* ou Nota (id,numero_cupom_fiscal,sequencia,produto,quantidade,valor_unitario,valor_total)
        > *Atentendes* (id,nome)
        > *Clientes* (id,nome,telefone,cpf,totaldecompras)
    > Entrada de Dados:
        > Insira no mínimo 200 produtos diferentes
        > insira no mínimo 10 Prateleiras diferentes
        > insira no mínimo 100 clientes
        > insira no mínimo 10 Atendentes
        > insira no mínimo 30 cupons fiscais com 30 itens cada emitidos em dias e meses diferentes. 
    > result_sets:
        > Crie as seguintes result_sets:> 
            > Prateleiras (somente nome e localização)
            > Produtos ordenados por prateleiras (codigo,nome,valor unitario) 
            > 1 Cupom Fiscal Completo (numero,data,produtos,val_unit,val_total)
            > Clintes (Todos)
            > Atendentes (Todos)
    > Tudo deve ficar armaezando em um SCHEMA fixo e rigido construtivo 
        > DATABASE.sql  vai criar a base de dados
        > INSERT.sql vai criar os registros na base de dados    

    > Relatorio (Módulo 6 com linguagem de programação: PHP ou Python:
        > Relatorio de Vendas por data totalizando, valor total de vendas do periodo.             

    > Entrega: 
        > Enviar o DATABASE.SQL - TESTADO FUNCIONANDO EM SQLITE
        > Enviar o INSERT.SQL - TESTADO FUNCIONANDO EM SQLITE

    FASE: modulo 05:
    > Relacionamentos atravez de ferramentas:
        > Relacione todas as tabelas. 
        > Crie uma tabela cidades contendo apenas ID,CIDADE,NOME SEM o CEP        
        > Acrescente o campo CEP no cadastro de Cidades
        > Acrecente o campo CIDADE_ID no Cad. Clientes
        > Relacione CLIENTES_CIDADE_ID --> Cidades_CIDADE_ID

    > Fazer um dump da tabela e enviar o DUMP.sql 



