SELECT
    data_vendas AS data_registro,
    id_produto,
    categoria_produto,
    SUM(quantidade_vendida) AS total_vendido,
    SUM(valor_total) AS faturamento_diario
FROM
    vendas_erp
WHERE
    data_vendo >= '2023-01-01' -- histórico de mais de 3 anos para capturar sazonalidade
GROUP BY
    data_venda,
    id_produto,
    categoria_produto
ORDER BY
    data_venda ASC,
    id_produto ASC;