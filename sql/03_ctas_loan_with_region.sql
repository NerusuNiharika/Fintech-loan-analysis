-- Create a new table with loan and region data
CREATE OR REPLACE TABLE fintech.loan_with_region AS
SELECT lo.loan_id, lo.loan_amount, sr.region
FROM fintech.loan lo
INNER JOIN fintech.state_region sr
ON lo.state = sr.state;