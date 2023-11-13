
select * from pessoas; 

select DISTINCT Ppai.nome, P.nome
from pessoas P
    LEFT JOIN pessoas Ppai ON 
        Ppai.mae_id = P.id OR
        Ppai.pai_id = P.id OR
        Ppai.filho_id = P.id OR
        Ppai.amigo_id = P.id;
    

