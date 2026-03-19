-- Count loans per year
CREATE OR REPLACE TABLE fintech.loan_count_by_year AS
SELECT issue_year, COUNT(loan_id) AS total_loans
FROM fintech.loan
GROUP BY issue_year
ORDER BY issue_year;