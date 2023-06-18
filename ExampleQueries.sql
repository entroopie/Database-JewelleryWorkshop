--CREATEVIEW 1. Create and show a view of the name of materials used in products, where the price was higher than the average

CREATE VIEW [materials used in products and the price of the product] AS
SELECT material_name, ProductsCatalog.product_id, Offers.price
	FROM Materials
	JOIN ContentsOfProduct ON Materials.material_id = ContentsOfProduct.material_id
	JOIN ProductsCatalog ON ContentsOfProduct.product_id = ProductsCatalog.product_id
	JOIN Offers ON Offers.product_id = ProductsCatalog.product_id;

SELECT material_name, COUNT(material_name) AS appearances 
	FROM [materials used in products and the price of the product]
	WHERE price > (SELECT AVG(price) FROM Offers)
	GROUP BY material_name
	ORDER BY COUNT(material_name) DESC;

DROP VIEW [materials used in products and the price of the product];

--JOIN 2. Get all supplier names and NIPs, whose contract with the Jewellery Workshop is already expired or WILL BE expired in 3 months. Today is 22.01.2023 .

SELECT Suppliers.supplier_name, Suppliers.NIP
	FROM Suppliers
	JOIN Contracts ON Suppliers.NIP = Contracts.NIP
	WHERE (DATEDIFF(month, Contracts.sign_date, '2023-01-22') > Contracts.contract_length) 
	OR (DATEDIFF(month, Contracts.sign_date, '2023-01-22') > (Contracts.contract_length - 3))

--JOIN 3. Get all transactions counted, where the customer 
--bought products made from the material that is contained in the warehouse on shelf number 10.
--Group by customer name and surname with transactions counted.

SELECT Customers.customer_name, Customers.customer_surname, COUNT(Transactions.transaction_id) AS [Number of transactions]
	FROM Transactions
	JOIN Customers ON Customers.customer_id = Transactions.customer_id
	JOIN Items ON Items.transaction_id = Transactions.transaction_id
	JOIN ProductsCatalog ON ProductsCatalog.product_id = Items.product_id
	JOIN ContentsOfProduct ON ContentsOfProduct.product_id = ProductsCatalog.product_id
	JOIN Materials ON Materials.material_id = ContentsOfProduct.material_id
	JOIN Boxes ON Boxes.material_id = Materials.material_id
	WHERE Boxes.shelf_no = 10
	GROUP BY Customers.customer_name, Customers.customer_surname

--SUBQUERY 4. Show all customer data where the customer has bought a product for women
--or bought in one transaction more than 1 item of a given product

SELECT *
	FROM Customers
	WHERE customer_id IN
		(SELECT Customers.customer_id
		FROM Customers
		JOIN Transactions ON Transactions.customer_id = Customers.customer_id
		JOIN Items ON Items.transaction_id = Transactions.transaction_id
		WHERE quantity > 1)
		OR customer_id IN
		(SELECT Customers.customer_id
		FROM Customers
		JOIN Transactions ON Transactions.customer_id = Customers.customer_id
		JOIN Items ON Items.transaction_id = Transactions.transaction_id
		JOIN ProductsCatalog ON ProductsCatalog.product_id = Items.product_id
		WHERE sex = 'Woman');

--SUBQUERY 5. Get all products, which are made from materials which are concerned
--in a contract that is more expensive than the average of contracts.

SELECT ProductsCatalog.product_id
	FROM ProductsCatalog
	JOIN ContentsOfProduct ON ContentsOfProduct.product_id = ProductsCatalog.product_id
	JOIN Materials ON Materials.material_id = ContentsOfProduct.material_id
	WHERE Materials.material_id IN
		(SELECT Materials.material_id
		FROM Materials
		JOIN Concerns ON Concerns.material_id = Materials.material_id
		JOIN Contracts ON Concerns.contract_id = Contracts.contract_id
		WHERE Contracts.payment > (SELECT AVG(payment) FROM Contracts));

--AGGREGATE FUNC 6. Count all deliveries in each month in 2022 and take the highest amount and show it.

SELECT MAX(tabl.[Deliveries made]) AS [Highest amount of deliveries]
	FROM (SELECT DATENAME(MONTH, DATEADD(MONTH, 1, delivery_date)) AS [Month of 2022], COUNT(order_id) AS [Deliveries made]
		FROM Deliveries
		WHERE YEAR(delivery_date) = 2022
		GROUP BY DATENAME(MONTH, DATEADD(MONTH, 1, delivery_date))) AS tabl;

--AGGREGATE FUNC 7. Get products where their price from a given offer
--is higher than the average price of the offers of all other products.
-- Show the highest and the lowest weight of these products.

SELECT MIN(ProductsCatalog.prod_weight) AS [Lowest weight], MAX(ProductsCatalog.prod_weight) AS [Highest weight]
	FROM ProductsCatalog
	JOIN Offers ON Offers.product_id = ProductsCatalog.product_id
	WHERE Offers.price > (SELECT AVG(price) FROM Offers);

--GROUPINGBY 8. Get all customer whose number of transactions is bigger than or equal to 2.

SELECT Customers.customer_name, customers.customer_surname, COUNT(Transactions.transaction_id) AS transactions_made
	FROM Customers
	JOIN Transactions ON Transactions.customer_id = Customers.customer_id
	GROUP BY Customers.customer_name, Customers.customer_surname
	HAVING COUNT(Transactions.transaction_id) >= 2;

--GROUPINGBY 9. Get type and subtype of a product (subtype cannot be null) where the products they
--represent is made of more than 3 materials

SELECT prod_type, prod_subtype
	FROM ProductsCatalog
	WHERE product_id IN
		(SELECT ProductsCatalog.product_id
		FROM ProductsCatalog
		JOIN ContentsOfProduct ON ContentsOfProduct.product_id = ProductsCatalog.product_id
		JOIN Materials ON Materials.material_id = ContentsOfProduct.material_id
		GROUP BY ProductsCatalog.product_id
		HAVING COUNT(Materials.material_id) > 3) AND prod_subtype IS NOT NULL

--ORDERING 10. Get product_id, sum of total prices from transactions in which the product was involved,
--the length, width and weight. Order descending by total prices then by product length descending.

SELECT ProductsCatalog.product_id, SUM(Transactions.total_price), ProductsCatalog.prod_length, ProductsCatalog.prod_width, ProductsCatalog.prod_weight
	FROM ProductsCatalog
	JOIN Items ON Items.product_id = ProductsCatalog.product_id
	JOIN Transactions ON Transactions.transaction_id = Items.transaction_id
	GROUP BY ProductsCatalog.product_id,ProductsCatalog.prod_length, ProductsCatalog.prod_width, ProductsCatalog.prod_weight
	ORDER BY SUM(Transactions.total_price) DESC, ProductsCatalog.prod_length DESC;
