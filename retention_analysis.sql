WITH customer_last_purchase AS(
	SELECT 
		customerkey,
		cleaned_name,
		orderdate,
		ROW_NUMBER() OVER (
			PARTITION BY customerkey
		ORDER BY
			orderdate DESC
		) AS rn,
		first_purchase_date
	FROM
		cohort_analysis
	),
churned_customers AS(
	
	SELECT
			customerkey,
			cleaned_name,
			first_purchase_date,
			orderdate AS last_purchase_date,
			CASE 
				WHEN orderdate < (
				SELECT
					max(orderdate)
				FROM
					sales
			) - INTERVAL '6 months' THEN 'Churned'
			ELSE 'Active'
	END AS customer_status
	FROM
			customer_last_purchase
	WHERE 
			rn = 1
	AND 
			orderdate < (
		SELECT
			max(orderdate)
		FROM
			sales
	) - INTERVAL '6 months'
	
	)
	
SELECT 
	customer_status,
	count(customerkey) AS num_customers
FROM
	churned_customers
GROUP BY 
	customer_status