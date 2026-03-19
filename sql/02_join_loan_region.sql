-- Combine loan data with region information
SELECT lo.loan_id, lo.loan_amount, sr.region
FROM fintech.loan lo
INNER JOIN fintech.state_region sr
ON lo.state = sr.state;