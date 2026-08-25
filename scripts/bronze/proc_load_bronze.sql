CREATE OR REPLACE PROCEDURE bronze.load_bronze()
LANGUAGE plpgsql
AS $$
BEGIN

	TRUNCATE TABLE bronze.crm_cust_info;
	
	COPY bronze.crm_cust_info
	FROM caminho
	WITH (
		FORMAT csv,
		HEADER true,
		DELIMITER ','
	);
	
	
	TRUNCATE TABLE bronze.crm_prd_info;
	
	COPY bronze.crm_prd_info
	FROM caminho
	WITH (
		FORMAT csv,
		HEADER true,
		DELIMITER ','
	);
	
	
	TRUNCATE TABLE bronze.crm_sales_details;
	
	COPY bronze.crm_sales_details
	FROM caminho
	WITH (
		FORMAT csv,
		HEADER true,
		DELIMITER ','
	);
	
	
	TRUNCATE TABLE bronze.erp_cust_az12;
	
	COPY bronze.erp_cust_az12
	FROM caminho
	WITH (
		FORMAT csv,
		HEADER true,
		DELIMITER ','
	);
	
	
	TRUNCATE TABLE bronze.erp_loc_a101;
	
	COPY bronze.erp_loc_a101
	FROM caminho
	WITH (
		FORMAT csv,
		HEADER true,
		DELIMITER ','
	);
	
	
	TRUNCATE TABLE bronze.erp_px_cat_g1v2;
	
	COPY bronze.erp_px_cat_g1v2
	FROM caminho
	WITH (
		FORMAT csv,
		HEADER true,
		DELIMITER ','
	);

END $$;
