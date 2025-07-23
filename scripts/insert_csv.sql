--- Upload csv to the table
BULK INSERT bronze.crm_cust_info
FROM '/tmp/cust_info.csv' --- Upload to /tmp of Docker folder
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

select COUNT(*) from bronze.crm_cust_info
