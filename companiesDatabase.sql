DROP TABLE company;

CREATE TABLE company (
	id INT,
	name VARCHAR(20),
	headquarters VARCHAR(20),
	established_year INT,
	ceo VARCHAR(20),
	PRIMARY KEY(id, name)
);

INSERT INTO company 
	VALUES
(1, 'Apple', 'California, US', 1976, 'Tim Cook'),
(2, 'Amazon', 'Wahington, US', 1994, 'Andy Jassy'),
(3, 'Alphabet', 'California, US', 2015, 'Sundar Pichai'),
(4, 'Microsoft', 'Washington, US', 1975, 'Satya Nadella'),
(5, 'Tencent', 'Shenzhen, China', 1998, 'Ma Huateng'),
(6, 'Meta', 'California, US', 2004, 'Mark Zuckerberg'),
(7, 'TSMC', 'Hsinchu, Taiwan', 1987, 'C.C. Wei'),
(8, 'Nvidia', 'California, US', 1993, 'Jensen Huang'),
(9, 'Salesforce', 'California, US', 1999, 'Marc Benioff'),
(10, 'IBM', 'New York, US', 1911, 'Arvind Krishna');

SELECT * FROM company ORDER BY established_year;

-- add industry column
ALTER TABLE company
	ADD industry VARCHAR(20) DEFAULT 'tech';

UPDATE company SET industry = 'Consumer electronics'
	WHERE name = 'Apple';

--select where the comany name starts with m
SELECT ceo, established_year FROM company
	WHERE name LIKE 'M%'
	ORDER BY established_year;

--select all companies in America
SELECT name, ceo, established_year FROM company
	WHERE headquarters LIKE '%US'
	ORDER BY established_year ASC;

CREATE TABLE stocks (
	id INT PRIMARY KEY,
	name VARCHAR(20),
	stock_price INT,
	FOREIGN KEY (id) REFERENCES company(id),
	FOREIGN KEY (name) REFERENCES company(name),
)

INSERT INTO worth
	VALUES
(1, 'Apple', 227.78),
(3, 'Alphabet', 164.42),
(10, 'IBM', 231.44);

