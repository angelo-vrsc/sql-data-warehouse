/*
===============================================================================
Inicialização do Data Warehouse
Descrição:
    Este script é o ponto de partida do projeto. Ele redefine o ambiente criando
    o banco de dados principal 'DataWarehouse' e estabelece a arquitetura em 
    camadas da Medallion Architecture através da criação dos schemas.

Schemas Criados:
    - bronze : Camada de ingestão bruta (raw stage) para dados do CRM e ERP
    - silver : Camada de limpeza, validação, deduplicação e transformação
    - gold   : Camada analítica modelada (Star Schema) para relatórios e BI
===============================================================================
*/

-- Create database
DROP DATABASE IF EXISTS DataWarehouse WITH (FORCE);

CREATE DATABASE DataWarehouse;

-- Create schemas
CREATE SCHEMA bronze;

CREATE SCHEMA silver;

CREATE SCHEMA gold;
