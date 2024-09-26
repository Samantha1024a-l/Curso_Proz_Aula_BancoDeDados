CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Email VARCHAR(255),
    DataCadastro DATE
);
CREATE FUNCTION TotalClientesCadastradosEmDia(Data DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE TotalClientes INT;
    
    SELECT 
        COUNT(*) 
    INTO 
        TotalClientes
    FROM 
        Clientes
    WHERE 
        DataCadastro = Data;

    RETURN TotalClientes;
END;
SELECT TotalClientesCadastradosEmDia('2024-09-23') AS ClientesNoDia;
