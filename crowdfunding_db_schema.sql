-- Create new table
CREATE TABLE category(
category_id VARCHAR(20) PRIMARY KEY,
category VARCHAR(15)
);

SELECT * FROM category;

-- Create new table
CREATE TABLE contacts(
contact_id INT PRIMARY KEY,
first_name VARCHAR(20),
last_name VARCHAR(20),
email VARCHAR(50)
);

SELECT * FROM contacts;

-- Create new table
CREATE TABLE subcategory(
subcategory_id VARCHAR(20) PRIMARY KEY,
subcategory VARCHAR(20)
);

SELECT * FROM subcategory;

-- Create new table
CREATE TABLE campaign(
cf_id INT PRIMARY KEY,
contact_id INT,
company_name VARCHAR(50),
description VARCHAR(120),
goal NUMERIC(10,2) ,
pledged NUMERIC(10,2),
outcome VARCHAR(50),
backers_count INT,
country VARCHAR(40),
curreny VARCHAR(20),
launched_date DATE,
end_date DATE,
category_id VARCHAR(20),
subcategory_id VARCHAR(20),
	
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
FOREIGN KEY (category_id) REFERENCES category(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
)

SELECT * FROM campaign;