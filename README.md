#  Retail Sales SQL Analysis

##  SQL project cleaning and analyzing retail sales performance data (TY vs LY vs Target)   

##  Project Overview
This project demonstrates a complete SQL data workflow — from raw data creation to cleaning and business analysis.

The goal was to simulate real-world retail data challenges and extract meaningful insights on store performance.

---

##  Project Structure
sql/
01_create_table.sql -- Create base table
02_generate_data.sql -- Generate clean sample data
03_dirty_data.sql -- Introduce real-world data issues
04_clean_data.sql -- Clean and standardize dataset
05_analysis.sql -- Business insights and analysis

--


---

##  Data Cleaning Process

The dataset intentionally included:
- Inconsistent text formatting (UPPER/lower/mixed case)
- Trailing spaces
- Multiple date formats (`YYYY/MM/DD`, `DD-MM-YYYY`, etc.)

### Cleaning steps:
- Standardized store names using `INITCAP()` and `TRIM()`
- Converted all dates into proper `DATE` format
- Created a clean final dataset: `retail_sales_clean_final`

---

##  Key Analysis Performed

### 1. Store Performance vs Target
- Compared total sales against targets
- Calculated variance per store

### 2. Best Performing Stores
- Ranked top 5 stores by total sales

### 3. Worst Performing Stores
- Identified lowest performers

### 4. Basket Size (Sales per Transaction)
- Measured average spend per customer
- Key driver of performance differences

---

##  Key Insights

- **Stellenbosch** is a top performer  
  → Higher transactions and larger basket size  

- **PMB Central** underperforms  
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
- Business Insight Analysis
- Real-world Data Simulation

---

##  Next Steps

- Build interactive dashboard in Power BI
- Apply window functions for deeper analysis
- Expand dataset with product/category breakdown

---

##  About

This project is part of my journey transitioning into a Data Analyst role.
