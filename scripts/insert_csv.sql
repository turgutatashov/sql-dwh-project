--- Upload csv to the table crm_cust_info
BULK INSERT bronze.crm_cust_info
FROM '/tmp/cust_info.csv' --- Upload to /tmp of Docker folder
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

select COUNT(*) from bronze.crm_cust_info;

--- Upload csv to the table crm_prd_info
BULK INSERT bronze.crm_prd_info
FROM '/tmp/prd_info.csv' --- Upload to /tmp of Docker folder
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

select COUNT(*) from bronze.crm_prd_info;

--- Upload csv to the table crm_sales_details
BULK INSERT bronze.crm_sales_details
FROM '/tmp/sales_details.csv' --- Upload to /tmp of Docker folder
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

select COUNT(*) from bronze.crm_sales_details;

--- Upload csv to the table erp_cust_az12
BULK INSERT bronze.erp_cust_az12
FROM '/tmp/CUST_AZ12.csv' --- Upload to /tmp of Docker folder
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

select COUNT(*) from bronze.erp_cust_az12;

--- Upload csv to the table erp_loc_a101
BULK INSERT bronze.erp_loc_a101
FROM '/tmp/LOC_A101.csv' --- Upload to /tmp of Docker folder
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

select COUNT(*) from bronze.erp_loc_a101;

--- Upload csv to the table erp_px_cat_g1v2
BULK INSERT bronze.erp_px_cat_g1v2
FROM '/tmp/PX_CAT_G1V2.csv' --- Upload to /tmp of Docker folder
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

select COUNT(*) from bronze.erp_px_cat_g1v2;
