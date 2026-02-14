# BigQuery-SQL-Projects

## Overview
This repository is a collection of data analysis projects developed using **Google BigQuery**. Each project simulates real-world business scenarios, focusing on extracting actionable insights from large datasets through complex queries and data modeling.

## Project Structure
The repository is organized into specialized folders, each containing the SQL source code, a detailed README, and sample output data (CSV/Visualizations):

### 1. [Emails Analysis](./emails_analysis/)
* **Focus:** CRM & Lifecycle Analytics.
* **Key Techniques:** Window Functions (`SUM OVER`), Date Transformations, and Market Share analysis.
* **Insight:** Calculating the monthly dynamics of email campaigns and the relative contribution of each account to total traffic.

### 2. [Product Analytics](./product_analytics/)
* **Focus:** Growth & User Acquisition.
* **Key Techniques:** `DENSE_RANK()`, `UNION ALL`, Multi-table Joins.
* **Insight:** Ranking global markets by subscriber volume and analyzing the correlation between account registrations and email engagement across different countries.

### 3. [Revenue Analysis](./revenue_analysis/)
* **Focus:** Financial Business Intelligence.
* **Key Techniques:** CTEs, Conditional Aggregation (`CASE WHEN`), Global Totals via Window Functions.
* **Insight:** Analyzing revenue streams by continent with a specific breakdown of Mobile vs. Desktop performance and market share percentages.

## Technical Skills
* **SQL Dialect:** Google Standard SQL (BigQuery).
* **Advanced Techniques:**
    * Common Table Expressions (CTEs) for modular code.
    * Window Functions for analytical ranking and running totals.
    * Data Blending using `UNION ALL` and complex `JOIN` logic.
    * Conditional logic for custom business metrics.
* **Tools:** Google BigQuery, Google Drive for data exports, GitHub for version control.
