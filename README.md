<<<<<<< HEAD
# 📊 Fintech Loan Analysis Dashboard (BigQuery + Looker)

## 🚀 Project Overview

This project is part of a cloud data analytics capstone where I worked on analyzing loan data for a fintech company (**TheLook Fintech**) to support their Treasury team in tracking financial performance and managing risk.

The project follows the complete data journey:
**Collect → Process → Store → Analyze → Visualize**

---

## 💡 Business Problem

The Treasury team needed insights to answer:

* How can we monitor cash flow effectively?
* What are the main reasons customers take loans?
* How are loans distributed geographically?
* What is the current health of outstanding loans?

---

## 🛠 Tools & Technologies

* **Google BigQuery** – Data storage & SQL processing
* **SQL** – Data transformation (JOIN, GROUP BY, CTAS, DISTINCT)
* **Looker** – Interactive dashboard development
* **Google Sheets (Connected Sheets)** – Data sharing

---

## 🔄 Project Workflow

### 1️⃣ Data Exploration

* Identified key tables and columns (loan_amount, issue_date, interest rate)
* Explored dataset schema and structure

### 2️⃣ Data Collection

* Imported external CSV data (state → region mapping)
* Created a new table: `state_region`

### 3️⃣ Data Processing

* Joined loan data with regional data
* Created a new table using CTAS:

  * `loan_with_region`
* Cleaned and deduplicated data using `DISTINCT`

### 4️⃣ Data Analysis

* Extracted loan purposes from nested fields (`application.purpose`)
* Aggregated loan data by year using `GROUP BY`
* Calculated total loan amounts and counts

### 5️⃣ Data Visualization (Looker Dashboard)

Built an interactive dashboard with:

* Total outstanding loan balance
* Loan distribution by status
* Top 10 states by loan count
* Top 10 high-income customers with active loans

---

## 📊 Dashboard Preview

![Dashboard](images/dashboard.png)

---

## 🧠 Key SQL Queries

### 🔹 JOIN (Combining datasets)

```sql
SELECT
  lo.loan_id,
  lo.loan_amount,
  sr.region
FROM fintech.loan lo
INNER JOIN fintech.state_region sr
ON lo.state = sr.state;
```

### 🔹 CTAS (Create table from query)

```sql
CREATE OR REPLACE TABLE fintech.loan_with_region AS
SELECT
  lo.loan_id,
  lo.loan_amount,
  sr.region
FROM fintech.loan lo
INNER JOIN fintech.state_region sr
ON lo.state = sr.state;
```

### 🔹 Deduplication

```sql
SELECT DISTINCT application.purpose AS purpose
FROM fintech.loan;
```

### 🔹 Aggregation (Loan by year)

```sql
SELECT issue_year, SUM(loan_amount) AS total_amount
FROM fintech.loan
GROUP BY issue_year;
```

---

## 📈 Key Insights

* Identified distribution of loans across regions
* Highlighted loan purposes impacting repayment behavior
* Monitored total outstanding loans for risk assessment
* Analyzed trends in loan issuance over time

---

## 🎯 Outcome

This project demonstrates how raw data can be transformed into meaningful insights using cloud tools. It highlights my ability to:

* Work with real-world datasets
* Perform data cleaning and transformation
* Write efficient SQL queries
* Build interactive dashboards for decision-making

---

## 📌 Note

This project was completed as part of a guided capstone, where I independently implemented the data analysis, SQL queries, and dashboard design.

---

## 🔗 Future Improvements

* Add predictive analysis for loan defaults
* Build automated pipelines for real-time updates
* Enhance dashboard interactivity

---

✨ Thank you for checking out this project!
=======
# Fintech-loan-analysis-BigQuery-Looker-
Fintech loan data analysis using BigQuery and Looker – SQL-based data transformation, dashboard creation, and business insights.
>>>>>>> 96632190ccb4cb7b8658bac1307a83f15a0a04c3
