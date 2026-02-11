# Global Revenue & User Engagement Analysis

## 📊 Project Overview
This project presents a comprehensive business intelligence analysis across geographic continents. By integrating financial performance (sales revenue) with operational data (user sessions and account registrations), 
this SQL solution provides a holistic view of regional profitability and hardware-driven revenue streams (Mobile vs. Desktop).

##  Key Technical Features
* **Device-Specific Revenue Segmentation:** Implemented conditional aggregation using `CASE WHEN` to bifurcate revenue between mobile and desktop users.
* **Global Market Share Calculations:** Leveraged advanced Window Functions—specifically `SUM(SUM(...)) OVER()`—to calculate a global revenue baseline and determine each continent's percentage contribution to total sales.
* **Multi-Stream Data Integration:** Employed a `UNION ALL` strategy within a CTE-based architecture to merge disparate data streams (Orders, Accounts, and Sessions) while ensuring high data integrity.
* **User Quality Metrics:** Built-in tracking for user verification rates, comparing total account registrations against `is_verified` status to assess lead quality.

## Tech Stack
* **Platform:** Google BigQuery
* **Logic Structures:** CTEs (Common Table Expressions) for modularity (`revenue_data`, `account_data`, `session_data`).
* **Advanced SQL:** Window Functions (`OVER`), Set Operators (`UNION ALL`), and complex `JOIN` logic across relational schemas.

## Key Insights & Output
The final query output generates a strategic dashboard-ready table including:
1.  **Continent:** Geographic breakdown.
2.  **Revenue Split:** Total revenue alongside Desktop vs. Mobile performance.
3.  **Market Share:** Percentage of global revenue per region.
4.  **Operational Volume:** Comparative analysis of session counts vs. verified account creation.

##  Results
* [📄 Переглянути CSV на GitHub](./results.csv)
* * [🔗 Інтерактивний звіт у Google Colab](ваше_посилання)
---
**Note:** This analysis was built using the `DA` dataset in BigQuery to demonstrate the ability to handle multi-layered data aggregation for business decision-making.
