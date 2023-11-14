SELECT cliente.id_cliente      AS ID_Cliente,
       cliente.nome            AS Nome,
       cliente.sobrenome       AS Sobrenome,
       cliente.data_nascimento AS Data_de_nascimento,
       casa.cor                AS Cor_da_Casa,
       bairro.nome             AS Bairro,
       carro.modelo            AS Carro
FROM   cliente
       LEFT JOIN casa
              ON cliente.id_cliente = casa.fk_cliente
       LEFT JOIN bairro
              ON casa.fk_bairro = bairro.id_bairro
       LEFT JOIN carro
              ON cliente.id_cliente = carro.fk_cliente;
