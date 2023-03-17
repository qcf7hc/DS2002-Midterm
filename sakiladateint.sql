# ===================================================================================
# How to Integrate a Dimension table. In other words, how to look-up Foreign Key
# values FROM a dimension table and add them to new Fact table columns.
#
# First, go to Edit -> Preferences -> SQL Editor and disable 'Safe Edits'.
# Close SQL Workbench and Reconnect to the Server Instance.
# ===================================================================================


USE sakila_dw2;

# ==============================================================
# Step 1: Add New Column(s)
# ==============================================================
ALTER TABLE sakila_dw2.dim_fact_payments
ADD COLUMN payment_date_key int NOT NULL AFTER payment_date;

# ==============================================================
# Step 2: Update New Column(s) with value from Dimension table
#         WHERE Business Keys in both tables match.
# ==============================================================
UPDATE sakila_dw2.dim_fact_payments AS fp
JOIN sakila_dw2.dim_date AS dd
ON DATE(fp.payment_date) = dd.full_date
SET fp.payment_date_key = dd.date_key;


# ==============================================================
# Step 3: Validate that newly updated columns contain valid data
# ==============================================================
SELECT payment_date
	, payment_date_key
    
FROM sakila_dw2.dim_fact_payments
LIMIT 10;

# =============================================================
# Step 4: If values are correct then drop old column(s)
# =============================================================
ALTER TABLE sakila_dw2.dim_fact_payments
DROP COLUMN payment_date;

# =============================================================
# Step 5: Validate Finished Fact Table.
# =============================================================
SELECT * FROM sakila_dw2.dim_fact_payments
LIMIT 10;

