-- create a table
CREATE TABLE Compras  (
  CompraID INT PRIMARY KEY,
  ProdutoID  INT,
  Quantidade INT,
  DataCompra DATE );
CREATE PROCEDURE LevantamentoDiarioCompras()
BEGIN
    SELECT 
        DataCompra,
        ProdutoID,
        SUM(Quantidade) AS TotalQuantidade
    FROM 
        Compras
    WHERE 
        DataCompra = CURDATE()  -- Filtra para a data atual
    GROUP BY 
        DataCompra, ProdutoID
    ORDER BY 
        DataCompra, ProdutoID;
END;
 CALL LevantamentoDiarioCompras();
