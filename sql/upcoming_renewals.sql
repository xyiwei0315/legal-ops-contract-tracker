-- Upcoming Contract Renewals
-- Identifies signed contracts expiring within the next 90 days.
-- This query can support proactive renewal review and reduce
-- the risk of missed expiration or auto-renewal deadlines.

SELECT
    contract_id,
    agreement_type,
    counterparty,
    business_owner,
    expiration_date,
    contract_value,
    risk_level,
    auto_renewal
FROM contracts
WHERE status = 'Signed'
    AND expiration_date BETWEEN CURRENT_DATE
    AND CURRENT_DATE + INTERVAL '90 days'
ORDER BY expiration_date ASC;
