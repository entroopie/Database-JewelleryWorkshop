CREATE TABLE Materials (
	material_id int NOT NULL PRIMARY KEY,
	material_name varchar(25),
	quality int
);

CREATE TABLE Customers (
	customer_id int NOT NULL PRIMARY KEY,
	customer_name varchar(15) CHECK(customer_name LIKE '%[A-Za-z]%'),
	customer_surname varchar(20) CHECK(customer_surname LIKE '%[A-Za-z]%'),
	phone_number varchar(11) CHECK(phone_number NOT LIKE '%[A-Za-z!@#$%^&*]%') UNIQUE
);

CREATE TABLE ProductsCatalog (
	product_id int NOT NULL PRIMARY KEY,
	prod_type varchar(15),
	prod_subtype varchar(15),
	size int CHECK(size BETWEEN 1 AND 6),
	sex varchar(6) CHECK (sex = 'Man' OR sex = 'Woman' OR sex = 'Unisex'),
	prod_length decimal(8,2),
	prod_width decimal(8,2),
	prod_weight decimal(8,2)
);

CREATE TABLE Transactions (
	transaction_id int NOT NULL PRIMARY KEY,
	transaction_date date,
	total_price decimal(7,2),
	customer_id int NOT NULL FOREIGN KEY REFERENCES Customers(customer_id)
		ON UPDATE CASCADE
);

CREATE TABLE Suppliers (
	NIP varchar(11) NOT NULL PRIMARY KEY,
	supplier_name varchar(25) CHECK(supplier_name LIKE '%[A-Za-z]%'),
	supplier_address varchar(30),
	city varchar(25),
	phone_number varchar(11) CHECK(phone_number NOT LIKE '%[A-Za-z!@#$%^&*]%') UNIQUE
);

CREATE TABLE Contracts (
	contract_id int NOT NULL PRIMARY KEY,
	sign_date  date,
	contract_length int,
	payment decimal(7,2),
	NIP varchar(11) FOREIGN KEY REFERENCES Suppliers(NIP)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE ContentsOfProduct (
	contents_id int NOT NULL PRIMARY KEY,
	quantity decimal(7,2),
	unit varchar(15),
	product_id int FOREIGN KEY REFERENCES ProductsCatalog(product_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	material_id int FOREIGN KEY REFERENCES Materials(material_id)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE Items (
	items_id int NOT NULL PRIMARY KEY,
	product_id int NOT NULL FOREIGN KEY REFERENCES ProductsCatalog(product_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	quantity int,
	transaction_id int FOREIGN KEY REFERENCES Transactions(transaction_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE Offers (
	offer_id int NOT NULL PRIMARY KEY,
	price decimal(7,2),
	offer_from date,
	offer_to date,
	product_id int FOREIGN KEY REFERENCES ProductsCatalog(product_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE Boxes (
	box_id int NOT NULL PRIMARY KEY,
	shelf_no int,
	size int CHECK(size BETWEEN 1 AND 100),
	material_id int FOREIGN KEY REFERENCES Materials(material_id)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE Amounts (
	amount_id int NOT NULL PRIMARY KEY,
	quantity decimal(7),
	unit varchar(15),
	amount_date date,
	box_id int FOREIGN KEY REFERENCES Boxes(box_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE Deliveries (
	order_id int NOT NULL PRIMARY KEY,
	quantity decimal(7),
	unit varchar(15),
	delivery_date date,
	NIP varchar(11) FOREIGN KEY REFERENCES Suppliers(NIP),
	material_id int FOREIGN KEY REFERENCES Materials(material_id)
		on DELETE SET NULL,
	amount_id int FOREIGN KEY REFERENCES Amounts(amount_id)
		ON DELETE SET NULL
);

CREATE TABLE Concerns (
	material_id int FOREIGN KEY REFERENCES Materials(material_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	contract_id int FOREIGN KEY REFERENCES Contracts(contract_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

