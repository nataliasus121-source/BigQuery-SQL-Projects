# Product Analytics: User Activity & Email Metrics Analysis

## 📊 Project Overview
This project features a sophisticated SQL analysis developed for Google BigQuery. 
[cite_start]It integrates multiple data streams—account registrations and email marketing performance—to provide a comprehensive view of user engagement across different countries, devices, and subscription statuses.

[cite_start]The primary goal is to identify high-performing markets and track the correlation between user acquisition (account creation) and retention efforts (email campaigns).

## Key SQL Features & Techniques
This analysis demonstrates advanced SQL proficiency through the use of:
* [cite_start]**Common Table Expressions (CTEs):** Structured for readability and modular data processing (e.g., `account_metrics`, `email_metrics`).
* [cite_start]**Data Integration:** Using `UNION ALL` to merge disparate datasets into a unified analytical layer.
* [cite_start]**Advanced Window Functions:** * `SUM(...) OVER (PARTITION BY country)` to calculate global market totals while maintaining granular row details.
    * [cite_start]`DENSE_RANK() OVER (ORDER BY ... DESC)` to dynamically rank top-performing countries by subscriber volume and engagement.
* [cite_start]**Complex Joins:** Utilizing `LEFT JOIN` and `INNER JOIN` across multiple tables (`account`, `session`, `email_sent`, etc.) to build a 360-degree user view.
* [cite_start]**Time-Series Analysis:** Aggregating data by date and calculating message delivery intervals.

## Analysis Dimensions
The query provides insights into:
1.  [cite_start]**Geography:** Market ranking by total account count and email activity.
2.  [cite_start]**User Status:** Breakdown by verification status (`is_verified`) and subscription status (`is_unsubscribed`).
3.  [cite_start]**Engagement Metrics:** Tracking Sent, Opened, and Visited (click-through) counts for email campaigns.

##  Repository Structure
* [cite_start]`query.sql`: The full BigQuery SQL script.
* `README.md`: Project documentation and technical details.
* `results.csv`: Sample output demonstrating the processed analytical data.


##  Results / Результати
* [📄 View results (Google Drive)](https://docs.google.com/document/d/1lgRniCUIVGGD7ddJ6IfUbRbVV-hsrpJV5SY7rOr81dY/edit?usp=sharing)
---
**Note:** The data processed in this project is for analytical demonstration purposes, showcasing the ability to handle large-scale relational datasets in a cloud environment.
