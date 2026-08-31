## Projeto de Data Warehouse & Arquitetura ETL com dados de CRM e ERP

**Código:** [init_database.sql](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/scripts/init_database.sql), [ddl_bronze.sql](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/scripts/bronze/ddl_bronze.sql), [proc_load_bronze.sql](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/scripts/bronze/proc_load_bronze.sql), [ddl_silver.sql](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/scripts/silver/ddl_silver.sql), [proc_load_silver.sql](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/scripts/silver/proc_load_silver.sql), [gold_views.sql](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/scripts/gold/gold_views.sql) 

**Objetivo:** Construir uma solução ponta a ponta de Data Warehouse em PostgreSQL para integrar, limpar e modelar dados brutos das fontes CRM e ERP voltados para análise de dados.  

**Descrição:** O projeto implementou a Arquitetura Medallion (camadas Bronze, Silver e Gold) no PostgreSQL. Os dados brutos provenientes de arquivos CSV foram ingeridos na camada Bronze (*estratégia Truncate & Load via Stored Procedures*). Na camada Silver, os dados passaram por limpeza, deduplicação (funções de janela), padronização de domínios, tratamento de nulos, correções de regras de negócio e versionamento histórico (SCD). Por fim, a camada Gold foi estruturada no modelo Star Schema usando Views dimensionais (dim_customers, dim_products, fact_sales) com *surrogate keys* para alimentar ferramentas de Business Intelligence.  

**Habilidades:** Data Warehousing, Arquitetura Medallion, Pipelines ETL/ELT, Limpeza e Tratamento de Dados, Modelagem Dimensional (Star Schema), Stored Procedures em SQL, Integração de Dados.  

**Tecnologias:** PostgreSQL, PL/pgSQL, SQL (DDL, DML, Window Functions), Git/GitHub.  

**Resultados:** Transformação com sucesso de dados transacionais fragmentados dos sistemas CRM e ERP em um ambiente analítico de alta performance, otimizado para BI.
