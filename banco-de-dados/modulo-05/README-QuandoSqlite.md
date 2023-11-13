### Usos apropriados para SQLite


O SQLite não é diretamente comparável aos mecanismos de banco de dados SQL cliente/servidor, como MySQL, Oracle, PostgreSQL ou SQL Server, pois o SQLite está tentando resolver um problema diferente.

Os mecanismos de banco de dados SQL cliente/servidor se esforçam para implementar um repositório compartilhado de dados corporativos. Eles enfatizam escalabilidade, simultaneidade, centralização e controle. O SQLite se esforça para fornecer armazenamento de dados local para aplicativos e dispositivos individuais. SQLite enfatiza economia, eficiência, confiabilidade, independência e simplicidade.

SQLite não compete com bancos de dados cliente/servidor. SQLite compete com fopen().

### Situações em que o SQLite funciona bem

**Dispositivos incorporados e a internet das coisas**
  
Como um banco de dados SQLite não requer administração, ele funciona bem em dispositivos que precisam operar sem suporte humano especializado. SQLite é um bom ajuste para uso em telefones celulares, set-top boxes, televisores, consoles de jogos, câmeras, relógios, utensílios de cozinha, termostatos, automóveis, máquinas-ferramentas, aviões, sensores remotos, drones, dispositivos médicos e robôs: a "internet das coisas".

Os mecanismos de banco de dados cliente/servidor são projetados para viver dentro de um datacenter bem atendido no núcleo da rede. O SQLite também funciona lá, mas o SQLite também prospera na borda da rede, defendendo-se enquanto fornece serviços de dados rápidos e confiáveis para aplicativos que, de outra forma, teriam conectividade duvidosa.


**Formato de arquivo do aplicativo**

O SQLite é frequentemente usado como o formato de arquivo em disco para aplicativos de desktop, como sistemas de controle de versão, ferramentas de análise financeira, conjuntos de catálogo e edição de mídia, pacotes CAD, programas de manutenção de registros e assim por diante. A operação tradicional de Arquivo/Abrir chama sqlite3_open() para anexar ao arquivo de banco de dados. As atualizações acontecem automaticamente à medida que o conteúdo do aplicativo é revisado, de modo que a opção de menu Arquivo/Salvar se torna supérflua. A opção de menu File/Save_As pode ser implementada usando a API de backup.

Há muitos benefícios nessa abordagem, incluindo desempenho aprimorado, custo e complexidade reduzidos e confiabilidade aprimorada. Consulte as notas técnicas "aff_short.html" e "appfileformat.html" e "fasterthanfs.html" para obter mais informações. Este caso de uso está intimamente relacionado ao formato de transferência de dados e aos casos de uso do contêiner de dados abaixo.

**Sites**

O SQLite funciona muito bem como o mecanismo de banco de dados para a maioria dos sites de tráfego baixo a médio (ou seja, a maioria dos sites). A quantidade de tráfego da web que o SQLite pode manipular depende de quão fortemente o site usa seu banco de dados. De um modo geral, qualquer site que receba menos de 100 mil acessos/dia deve funcionar bem com o SQLite. O número de 100 mil acessos/dia é uma estimativa conservadora, não um limite superior rígido. O SQLite demonstrou funcionar com 10 vezes essa quantidade de tráfego.

O site do SQLite (https://www.sqlite.org/) usa o próprio SQLite, é claro, e no momento da redação deste artigo (2015) ele lida com cerca de 400 mil a 500 mil solicitações HTTP por dia, cerca de 15 a 20% das quais são dinâmicas páginas que tocam no banco de dados. O conteúdo dinâmico usa cerca de 200 instruções SQL por página da web. Essa configuração é executada em uma única VM que compartilha um servidor físico com outras 23 e ainda mantém a média de carga abaixo de 0,1 na maioria das vezes.

**Análise de dados**

As pessoas que entendem de SQL podem empregar o shell de linha de comando sqlite3 (ou vários programas de acesso SQLite de terceiros) para analisar grandes conjuntos de dados. Os dados brutos podem ser importados de arquivos CSV e, em seguida, esses dados podem ser fatiados e divididos para gerar uma infinidade de relatórios resumidos. Análises mais complexas podem ser feitas usando scripts simples escritos em Tcl ou Python (ambos vêm com SQLite embutido) ou em R ou outras linguagens usando adaptadores prontamente disponíveis. Os usos possíveis incluem análise de log do site, análise de estatísticas esportivas, compilação de métricas de programação e análise de resultados experimentais. Muitos pesquisadores de bioinformática usam o SQLite dessa maneira.

A mesma coisa pode ser feita com um banco de dados cliente/servidor corporativo, é claro. A vantagem do SQLite é que é mais fácil de instalar e usar e o banco de dados resultante é um único arquivo que pode ser gravado em um cartão de memória USB ou enviado por e-mail a um colega.

**Cache para dados corporativos** 

Muitos aplicativos usam o SQLite como um cache de conteúdo relevante de um RDBMS corporativo. Isso reduz a latência, pois a maioria das consultas agora ocorre no cache local e evita uma viagem de ida e volta da rede. Também reduz a carga na rede e no servidor de banco de dados central. E, em muitos casos, isso significa que o aplicativo do lado do cliente pode continuar operando durante interrupções na rede.

        RDBMS (Relational Database Management System)

**Banco de dados do lado do servidor** 

Os projetistas de sistemas relatam sucesso usando o SQLite como um armazenamento de dados em aplicativos de servidor executados no datacenter ou, em outras palavras, usando o SQLite como o mecanismo de armazenamento subjacente para um servidor de banco de dados específico do aplicativo.

Com esse padrão, o sistema geral ainda é cliente/servidor: os clientes enviam solicitações ao servidor e recebem respostas pela rede. Mas, em vez de enviar SQL genérico e recuperar o conteúdo bruto da tabela, as solicitações do cliente e as respostas do servidor são de alto nível e específicas do aplicativo. O servidor traduz as solicitações em várias consultas SQL, reúne os resultados, faz o pós-processamento, filtra e analisa e, em seguida, constrói uma resposta de alto nível contendo apenas as informações essenciais.

Os desenvolvedores relatam que o SQLite geralmente é mais rápido que um mecanismo de banco de dados SQL cliente/servidor nesse cenário. As solicitações de banco de dados são serializadas pelo servidor, portanto, a simultaneidade não é um problema. A simultaneidade também é aprimorada por "fragmentação de banco de dados": usando arquivos de banco de dados separados para diferentes subdomínios. Por exemplo, o servidor pode ter um banco de dados SQLite separado para cada usuário, de modo que o servidor possa lidar com centenas ou milhares de conexões simultâneas, mas cada banco de dados SQLite é usado apenas por uma conexão.

**Formato de transferência de dados** 

Como um banco de dados SQLite é um único arquivo compacto em um formato multiplataforma bem definido, ele é frequentemente usado como um contêiner para transferir conteúdo de um sistema para outro. O remetente reúne o conteúdo em um arquivo de banco de dados SQLite, transfere esse arquivo para o destinatário e, em seguida, o destinatário usa o SQL para extrair o conteúdo conforme necessário.

Um banco de dados SQLite facilita a transferência de dados entre sistemas, mesmo quando os terminais têm tamanhos de palavras e/ou ordens de bytes diferentes. Os dados podem ser uma mistura complexa de grandes blobs binários, texto e pequenos valores numéricos ou booleanos. O formato de dados pode ser facilmente estendido adicionando novas tabelas e/ou colunas, sem quebrar os receptores legados. A linguagem de consulta SQL significa que os receptores não precisam analisar toda a transferência de uma só vez, mas podem consultar o conteúdo recebido conforme necessário. O formato de dados é "transparente" no sentido de que é facilmente decodificado para visualização humana usando uma variedade de ferramentas de código aberto universalmente disponíveis, de vários fornecedores.

**Arquivo de arquivos e/ou contêiner de dados**

A ideia do SQLite Archive mostra como o SQLite pode ser usado como substituto para arquivos ZIP ou Tarballs. Um arquivo de arquivos armazenados no SQLite é apenas um pouco maior e, em alguns casos, até menor, do que o arquivo ZIP equivalente. E um arquivo SQLite apresenta atualização incremental e atômica e a capacidade de armazenar metadados muito mais ricos.

O Fossil versão 2.5 e posterior oferece arquivos SQLite Archive como formato de download, além do tradicional arquivo tarball e ZIP. O shell de linha de comando sqlite3.exe versão 3.22.0 e posterior criará, listará ou descompactará um arquivamento SQL usando o comando .archive.

O SQLite é uma boa solução para qualquer situação que exija o agrupamento de diversos conteúdos em um pacote autocontido e autodescritivo para envio através de uma rede. O conteúdo é codificado em um formato de arquivo bem definido, multiplataforma e estável. A codificação é eficiente e os receptores podem extrair pequenos subconjuntos do conteúdo sem precisar ler e analisar o arquivo inteiro.

Os arquivos SQL são úteis como formato de distribuição para atualizações de software ou conteúdo que são transmitidas para muitos clientes. Variações dessa ideia são usadas, por exemplo, para transmitir guias de programação de TV para decodificadores e enviar atualizações pelo ar para sistemas de navegação de veículos.

**Substituição para arquivos de disco ad hoc**

Muitos programas usam fopen() , fread() e fwrite() para criar e gerenciar arquivos de dados em formatos caseiros. SQLite funciona particularmente bem como um substituto para esses arquivos de dados ad hoc . Ao contrário da intuição, o SQLite pode ser mais rápido que o sistema de arquivos para ler e gravar conteúdo em disco.

**Bancos de dados internos ou temporários**

Para programas que têm muitos dados que devem ser peneirados e classificados de diversas maneiras, geralmente é mais fácil e rápido carregar os dados em um banco de dados SQLite na memória e usar consultas com junções e cláusulas ORDER BY para extrair os dados na memória. formulário e ordem necessários em vez de tentar codificar as mesmas operações manualmente. Usar um banco de dados SQL internamente dessa forma também dá ao programa maior flexibilidade, pois novas colunas e índices podem ser adicionados sem ter que recodificar cada consulta.

Stand-in para um banco de dados corporativo durante demonstrações ou testes

Os aplicativos cliente geralmente usam uma interface de banco de dados genérica que permite conexões com vários mecanismos de banco de dados SQL. Faz sentido incluir o SQLite na combinação de bancos de dados suportados e vincular estaticamente o mecanismo SQLite ao cliente. Dessa forma, o programa cliente pode ser usado de forma independente com um arquivo de dados SQLite para testes ou demonstrações.

**Educação e treinamento**

Por ser simples de configurar e usar (a instalação é trivial: basta copiar o executável sqlite3 ou sqlite3.exe para a máquina de destino e executá-lo) SQLite é um bom mecanismo de banco de dados para uso no ensino de SQL. Os alunos podem criar facilmente quantos bancos de dados quiserem e podem enviar bancos de dados por e-mail ao instrutor para comentários ou notas. Para alunos mais avançados que estão interessados ​​em estudar como um RDBMS é implementado, o código SQLite modular e bem comentado e documentado pode servir como uma boa base.

**Extensões de linguagem SQL experimental*

O design simples e modular do SQLite o torna uma boa plataforma para prototipagem de novos recursos ou ideias experimentais de linguagem de banco de dados.

### Situações em que um RDBMS cliente/servidor pode funcionar melhor

**Aplicativos cliente/servidor**

Se houver muitos programas clientes enviando SQL para o mesmo banco de dados em uma rede, use um mecanismo de banco de dados cliente/servidor em vez do SQLite. O SQLite funcionará em um sistema de arquivos de rede, mas devido à latência associada à maioria dos sistemas de arquivos de rede, o desempenho não será ótimo. Além disso, a lógica de bloqueio de arquivos é problemática em muitas implementações de sistemas de arquivos de rede (em Unix e Windows). Se o bloqueio de arquivo não funcionar corretamente, dois ou mais clientes podem tentar modificar a mesma parte do mesmo banco de dados ao mesmo tempo, resultando em corrupção. Como esse problema resulta de bugs na implementação do sistema de arquivos subjacente, não há nada que o SQLite possa fazer para evitá-lo.

Uma boa regra é evitar o uso do SQLite em situações em que o mesmo banco de dados será acessado diretamente (sem um servidor de aplicativos interveniente) e simultaneamente de vários computadores em uma rede.

**Sites de alto volume**

O SQLite normalmente funcionará bem como o back-end do banco de dados para um site. Mas se o site tiver muitas gravações ou estiver tão ocupado que exija vários servidores, considere usar um mecanismo de banco de dados cliente/servidor de classe empresarial em vez do SQLite.

**Conjuntos de dados muito grandes**

Um banco de dados SQLite é limitado em tamanho a 281 terabytes (2 48 bytes, 256 tibibytes). E mesmo que pudesse lidar com bancos de dados maiores, o SQLite armazena todo o banco de dados em um único arquivo de disco e muitos sistemas de arquivos limitam o tamanho máximo dos arquivos a algo menor que isso. Portanto, se você estiver contemplando bancos de dados dessa magnitude, seria bom considerar o uso de um mecanismo de banco de dados cliente/servidor que distribua seu conteúdo em vários arquivos de disco e talvez em vários volumes.

**Alta simultaneidade**

O SQLite suporta um número ilimitado de leitores simultâneos, mas só permitirá um escritor a qualquer instante. Para muitas situações, isso não é um problema. Escritores fazem fila. Cada aplicativo faz seu banco de dados funcionar rapidamente e seguir em frente, e nenhum bloqueio dura mais do que algumas dezenas de milissegundos. Mas há alguns aplicativos que exigem mais simultaneidade e esses aplicativos podem precisar buscar uma solução diferente.

### Lista de verificação para escolher o mecanismo de banco de dados correto

**Os dados são separados do aplicativo por uma rede? → escolha cliente/servidor**

- Os mecanismos de banco de dados relacionais atuam como filtros de dados que reduzem a largura de banda. Portanto, é melhor manter o mecanismo de banco de dados e os dados no mesmo dispositivo físico para que o link mecanismo para disco de alta largura de banda não precise atravessar a rede, apenas o link aplicativo para mecanismo de largura de banda mais baixa.

- Mas o SQLite está embutido no aplicativo. Portanto, se os dados estiverem em um dispositivo separado do aplicativo, é necessário que o link motor-disco de maior largura de banda esteja na rede. Isso funciona, mas é abaixo do ideal. Portanto, geralmente é melhor selecionar um mecanismo de banco de dados cliente/servidor quando os dados estiverem em um dispositivo separado do aplicativo.

- Nota Bene: Nesta regra, "aplicativo" significa o código que emite instruções SQL. Se o "aplicativo" for um servidor de aplicativos e se o conteúdo residir na mesma máquina física que o servidor de aplicativos, o SQLite ainda poderá ser apropriado, mesmo que o usuário final esteja a outro salto de rede.

### Muitos escritores simultâneos? → escolha cliente/servidor

- Se muitos threads e/ou processos precisarem escrever no banco de dados no mesmo instante (e eles não puderem enfileirar e se revezar), é melhor selecionar um mecanismo de banco de dados que suporte esse recurso, o que sempre significa um mecanismo de banco de dados cliente/servidor.

- SQLite suporta apenas um gravador de cada vez por arquivo de banco de dados. Mas, na maioria dos casos, uma transação de gravação leva apenas milissegundos e, portanto, vários gravadores podem simplesmente se revezar. O SQLite lidará com mais simultaneidade de gravação do que muitas pessoas suspeitam. No entanto, os sistemas de banco de dados cliente/servidor, porque têm um processo servidor de longa execução disponível para coordenar o acesso, geralmente podem lidar com muito mais simultaneidade de gravação do que o SQLite jamais conseguirá.

### Grandes dados? → escolha cliente/servidor

- Se seus dados crescerem para um tamanho que você não se sinta à vontade ou não consiga caber em um único arquivo de disco, você deve selecionar uma solução diferente do SQLite. O SQLite suporta bancos de dados de até 281 terabytes de tamanho, supondo que você possa encontrar uma unidade de disco e um sistema de arquivos que suporte arquivos de 281 terabytes. Mesmo assim, quando o tamanho do conteúdo parece que pode chegar à faixa de terabytes, seria bom considerar um banco de dados cliente/servidor centralizado.

### Caso contrário → escolha SQLite!

- Para armazenamento local de dispositivo com baixa simultaneidade de gravação e menos de um terabyte de conteúdo, o SQLite é quase sempre uma solução melhor. SQLite é rápido e confiável e não requer configuração ou manutenção. Mantém as coisas simples. SQLite "simplesmente funciona".
