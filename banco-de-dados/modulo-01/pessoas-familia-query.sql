

SELECT DISTINCT D.NomeD
FROM Disciplina D
    LEFT JOIN Disciplina DPai ON DPai.PreReqD = D.CodD
WHERE
    D.PreReqD IS NULL
    AND DPai.CodD IS NULL -- UPDATE:
    -- Seleciona de forma distinta apenas nomes de disciplinas
SELECT
    DISTINCT D.NomeD -- Da tabelas de disciplinas
FROM
    Disciplina D -- Que possua (JOIN) ou não (LEFT) relação com outras disciplinas (PAI) que tem a disciplina principal (FILHA) como PréRequesito ( DPai.PreReqD = D.CodD )
    LEFT JOIN Disciplina DPai ON DPai.PreReqD = D.CodD -- Onde a disciplina não possua pré requisitos, e não seja pré requisito de nenhuma outra disciplina
WHERE
    D.PreReqD IS NULL
    AND DPai.CodD IS NULL