-- Total loan amount by year
SELECT issue_year, SUM(loan_amount) AS total_amount
FROM fintech.loan
GROUP BY issue_year
ORDER BY issue_year;