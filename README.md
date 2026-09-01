## Projeto de Data Warehouse & Arquitetura ETL com dados de CRM e ERP

**Código:** [init_database.sql](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/scripts/init_database.sql), [ddl_bronze.sql](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/scripts/bronze/ddl_bronze.sql), [proc_load_bronze.sql](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/scripts/bronze/proc_load_bronze.sql), [ddl_silver.sql](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/scripts/silver/ddl_silver.sql), [proc_load_silver.sql](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/scripts/silver/proc_load_silver.sql), [gold_views.sql](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/scripts/gold/gold_views.sql) 

**Objetivo:** Construir uma solução ponta a ponta de Data Warehouse em PostgreSQL para integrar, limpar e modelar dados brutos das fontes CRM e ERP voltados para análise de dados.  

**Descrição:** O projeto implementou a Arquitetura Medallion (camadas Bronze, Silver e Gold) no PostgreSQL. Os dados brutos provenientes de arquivos CSV foram ingeridos na camada Bronze (*estratégia Truncate & Load via Stored Procedures*). Na camada Silver, os dados passaram por limpeza, deduplicação (funções de janela), padronização de domínios, tratamento de nulos, correções de regras de negócio e versionamento histórico (SCD). Por fim, a camada Gold foi estruturada no modelo Star Schema usando Views dimensionais (dim_customers, dim_products, fact_sales) com *surrogate keys* para alimentar ferramentas de Business Intelligence.  

**Habilidades:** Data Warehousing, Arquitetura Medallion, Pipelines ETL/ELT, Limpeza e Tratamento de Dados, Modelagem Dimensional (Star Schema), Stored Procedures em SQL, Integração de Dados.  

**Tecnologias:** PostgreSQL, PL/pgSQL, SQL (DDL, DML, Window Functions), Git/GitHub.  

**Resultados:** Transformação com sucesso de dados transacionais fragmentados dos sistemas CRM e ERP em um ambiente analítico de alta performance, otimizado para BI.



## 📐 Arquitetura & Documentação Visual

### 1. Arquitetura de Alto Nível
Visão geral da solução, destacando a transição de arquivos brutos (CRM/ERP) para a arquitetura Medallion até a camada de consumo.

![Arquitetura de Alto Nível](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/docs/Arquitetura%20de%20alto%20n%C3%ADvel.png)

### 2. Fluxo de Dados (Pipeline ETL)
Mapeamento de como os dados são extraídos e consolidados na **Gold**.

![Fluxo de Dados](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/docs/Data%20Flow.png)

### 3. Linhagem dos Dados (Data Lineage)
Rastreabilidade campo a campo, mostrando como os dados brutos conversam.

![Linhagem dos Dados](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/docs/Mapeamento%20de%20linhagem%20dos%20dados.png)

### 4. Diagrama Entidade-Relacionamento (ERD)
Modelagem dimensional Star Schema da camada **Gold**, detalhando chaves primárias/estrangeiras e seus relacionamentos.

![Diagrama ERD](https://github.com/angelo-vrsc/sql-data-warehouse/blob/main/docs/Diagrama%20Entidade%20Relacionamento.png)

  

---

## 📬 Informações para contato

Sinta-se à vontade para entrar em contato comigo para discutir oportunidades, sugestões ou dúvidas sobre o projeto!

- **Autor:** Angelo Carvalho
- **LinkedIn:** [Angelo Carvalho](www.linkedin.com/in/angelo-victor-carvalho)
- **E-mail:** angelovictor1999@gmail.com
