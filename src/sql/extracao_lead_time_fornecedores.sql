SELECT
    id_produto,
    id_fornecedor,
    id_pedido_compra,
    data_emissao_pedido,
    data_recebimento_estoque,
    -- calcula a diferença em dias (Lead Time Real)
    DATE_PART('day', data_recebimento_estoque - data_emissao_pedido) AS lead_time_real
FROM   
    pedidos_compra_erp
WHERE
    status_pedido = 'Entregue'
    AND data_recebimento_estoque >= '2023-01-01';
