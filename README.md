# 🛒 Retail Sales SQL Analysis

> SQL project cleaning and analyzing retail sales performance data (TY vs LY vs Target)

---

##  Project Overview

This project demonstrates a complete SQL data workflow — from raw data creation to cleaning and business analysis.

The objective is to simulate real-world retail data challenges and extract meaningful insights into store performance.

---

##  Project Structure

sql/
├── 01_create_table.sql   - Create base table  
├── 02_generate_data.sql  - Generate clean sample data  
├── 03_dirty_data.sql     - Simulate messy data  
├── 04_clean_data.sql     - Data cleaning process  
└── 05_analysis.sql       - Business insights  


---

##  Data Cleaning Process

The dataset intentionally includes common real-world data issues:

- Inconsistent text formatting (UPPER/lower/mixed case)
- Trailing spaces
- Multiple date formats (`YYYY/MM/DD`, `DD-MM-YYYY`, etc.)

### Cleaning Steps

- Standardized store names using `INITCAP()` and `TRIM()`
- Converted all date formats into proper `DATE` format
- Created a final clean dataset: `retail_sales_clean_final`

---

##  Analysis Performed

### 1. Store Performance vs Target
- Compared total sales against targets
- Calculated variance per store

### 2. Top Performing Stores
- Identified top 5 stores by total sales

### 3. Bottom Performing Stores
- Identified lowest performing stores

### 4. Basket Size (Sales per Transaction)
- Calculated average spend per customer
- Key driver of store performance differences

---

##  Key Insights

- **Stellenbosch** is a top performer  
  → High transaction volume and strong basket size  

- **PMB Central** is a low performer  
  → Lower foot traffic and smaller basket size  

- Store performance is driven by:
  - Customer volume (transactions)
  - Average basket value  

---

##  Skills Demonstrated

- SQL Data Cleaning
- Data Transformation
- Handling Inconsistent Data
- Aggregations & Grouping
- Business Analysis

---

##  Next Steps

- Build an interactive dashboard in Power BI
- Apply window functions for deeper insights
- Extend dataset with product-level analysis

---

##  About

This project is part of my journey transitioning into a Data Analyst role, focusing on practical, real-world SQL skills.
