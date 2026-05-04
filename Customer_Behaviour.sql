USE `Customers_Behavior`;


-- Revenue generation by gender
SELECT
	gender,
    SUM(purchase_amount) AS Revenue
FROM
	customers
GROUP BY gender
ORDER BY Revenue;

-- Which customers used a discount code but still spent more than the average?
SELECT 
	customer_id,
    age,
    purchase_amount,
    category,
    location
FROM
	customers
WHERE discount_applied='YES'
AND purchase_amount > (SELECT AVG(purchase_amount) FROM customers)
ORDER BY purchase_amount DESC;

-- Products with the highest rating reviews
SELECT
	item_purchased,
    ROUND(AVG(review_rating),2) AS Average_rating
FROM
	customers
GROUP BY item_purchased
ORDER BY Average_rating DESC
LIMIT 5;

-- Comparision of average purchase amounts per shipping types
SELECT 
	shipping_type,
    ROUND(AVG(purchase_amount),2) AS Purchase_Amount
FROM
	customers
GROUP BY shipping_type
HAVING shipping_type IN ('Express','Standard')
ORDER BY Purchase_Amount;

-- Do subscribed customers spend more?
SELECT
	subscription_status,
    COUNT(customer_id) AS Total_customers,
    ROUND(AVG(purchase_amount),2) AS Average_spend,
    SUM(purchase_amount) AS Total_spend
FROM
	customers
GROUP BY subscription_status
ORDER BY Total_spend DESC,Average_spend; 

-- which products rely heavily on discounts? - highest purchases using discount codes
SELECT
	item_purchased,
    ROUND(100*SUM(CASE WHEN discount_applied='YES' THEN 1 ELSE 0 END)/count(*),2) AS percentage_purchased
FROM
	customers
GROUP BY item_purchased
ORDER BY percentage_purchased DESC
LIMIT 5;

-- customer loyalty segmentation based on number of previous purchases
/* the creterion being used are as follows:
1. if the customer has made only 1 or fewer purchases then classify as New
2. if the customer has made more than 1 but less than 10 then classify as Returning
3. if the customer has made more than 10 purchases then classify as Loyal
*/

WITH customer_loyalty AS (
SELECT 
	customer_id, 
    previous_purchases,
	CASE 
		WHEN previous_purchases <=1 THEN 'New'
		WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
		WHEN previous_purchases >10 THEN 'Loyal'
		END AS customer_segment
FROM
	customers
)
SELECT 
	customer_segment,
    COUNT(*) AS Number_of_Customers
FROM
	customer_loyalty
GROUP BY customer_segment;

-- What are the top 3 most purchased products in each item category
WITH item_counts AS (
SELECT 
	category,
    item_purchased, 
    COUNT(customer_id) AS total_orders,
    ROW_NUMBER() OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS item_rank
FROM customers
GROUP BY category, item_purchased
)

SELECT
	item_rank,
    category,
    item_purchased,
    total_orders
FROM item_counts
WHERE item_rank <= 3;

-- Are customers who are repeat buyers also likely to be subcribers?
SELECT
	subscription_status,
    COUNT(customer_id) AS repeat_buyers
FROM
	customers
WHERE previous_purchases >5
GROUP BY subscription_status;

-- Revenue Contribution per customer age grouping 
SELECT
	age_group,
    SUM(purchase_amount) AS total_revenue
FROM 
	customers
GROUP BY age_group
ORDER BY total_revenue DESC;



