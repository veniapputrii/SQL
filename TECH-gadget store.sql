

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    sku VARCHAR(20), 
    product_name VARCHAR(100),
    unit_price DECIMAL(10, 2),
    unit_cost DECIMAL(10, 2) 
);

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(100), 
    email_address VARCHAR(100), 
    signup_date DATE 
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    sale_timestamp TIMESTAMP,  
    quantity INT,
    discount_applied DECIMAL(4, 2),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

--to remove the previous dataset/data table that I made 
--DROP TABLE IF EXISTS sales;
--DROP TABLE IF EXISTS users;
--DROP TABLE IF EXISTS products;
-- Insert 10 Products (10 rows)
INSERT INTO products (product_id, sku, product_name, unit_price, unit_cost) VALUES
(1, 'LAP-X1-BLK', 'Laptop Pro X1', 1200.00, 800.00), (2, 'PHO-Z9-SLV', 'Smartphone Z9', 800.00, 500.00),
(3, 'TAB-M4-WHT', 'Tablet M4', 400.00, 250.00), (4, 'ACC-M1-BLK', 'Wireless Mouse', 25.00, 10.00),
(5, 'ACC-K1-RGB', 'Mech Keyboard', 85.00, 40.00), (6, 'AUD-E2-WHT', 'Earbuds E2', 150.00, 75.00),
(7, 'MON-U4-BLK', 'Ultrawide Monitor', 350.00, 200.00), (8, 'LAP-X2-SLV', 'Laptop Air X2', 999.00, 650.00),
(9, 'ACC-C3-GRY', 'USB-C Hub', 45.00, 15.00), (10, 'AUD-H9-BLK', 'Over-Ear Headphones', 250.00, 120.00);

-- Insert 40 Users (40 rows)
INSERT INTO users (user_id, full_name, email_address, signup_date) VALUES
(1, 'John Doe', 'john.doe@gmail.com', '2025-01-15'), (2, 'Jane Smith', 'jsmith@yahoo.com', '2025-03-22'),
(3, 'Emily Chen', 'emilyc@company.net', '2025-06-10'), (4, 'Michael Brown', 'mbrown@gmail.com', '2025-11-05'),
(5, 'Sarah Connor', 's.connor@outlook.com', '2026-01-20'), (6, 'David Kim', 'dkim@startup.io', '2026-02-14'),
(7, 'Laura Croft', 'laura.c@yahoo.com', '2026-04-01'), (8, 'James Bond', 'jbond@mi6.co.uk', '2025-02-01'),
(9, 'Tony Stark', 'tstark@stark.com', '2025-04-12'), (10, 'Bruce Wayne', 'bwayne@wayne.ent', '2025-07-30'),
(11, 'Clark Kent', 'ckent@dailyplanet.com', '2025-08-14'), (12, 'Diana Prince', 'dprince@themyscira.gov', '2025-09-09'),
(13, 'Peter Parker', 'pparker@esu.edu', '2025-10-31'), (14, 'Natasha Romanoff', 'nromanoff@shield.gov', '2025-12-25'),
(15, 'Steve Rogers', 'srogers@brooklyn.com', '2026-01-05'), (16, 'Wanda Maximoff', 'wmaximoff@chaos.net', '2026-02-28'),
(17, 'Vision Synth', 'vision@mindstone.io', '2026-03-15'), (18, 'Sam Wilson', 'swilson@falcon.org', '2026-04-20'),
(19, 'Bucky Barnes', 'bbarnes@winter.com', '2026-05-10'), (20, 'Scott Lang', 'slang@pym.net', '2026-05-25'),
(21, 'Hope Pym', 'hpym@pym.net', '2025-01-22'), (22, 'Carol Danvers', 'cdanvers@airforce.mil', '2025-02-18'),
(23, 'Nick Fury', 'nfury@shield.gov', '2025-03-05'), (24, 'Maria Hill', 'mhill@shield.gov', '2025-04-30'),
(25, 'Phil Coulson', 'pcoulson@shield.gov', '2025-05-15'), (26, 'Thor Odinson', 'thor@asgard.gov', '2025-06-20'),
(27, 'Loki Laufeyson', 'loki@asgard.gov', '2025-07-04'), (28, 'Stephen Strange', 'sstrange@sanctum.org', '2025-08-08'),
(29, 'Wong Master', 'wong@kamar-taj.org', '2025-09-12'), (30, 'Shang Chi', 'schi@ta-lo.net', '2025-10-10'),
(31, 'Katy Chen', 'kchen@hotel.com', '2025-11-11'), (32, 'TChalla King', 'tchalla@wakanda.gov', '2025-12-01'),
(33, 'Shuri Princess', 'shuri@wakanda.gov', '2026-01-10'), (34, 'Okoye General', 'okoye@wakanda.gov', '2026-02-15'),
(35, 'Nakia Spy', 'nakia@wakanda.gov', '2026-03-20'), (36, 'Mbaku Leader', 'mbaku@jabari.gov', '2026-04-05'),
(37, 'Clint Barton', 'cbarton@farm.net', '2026-05-01'), (38, 'Kate Bishop', 'kbishop@security.com', '2026-05-15'),
(39, 'Yelena Belova', 'ybelova@widow.net', '2026-06-01'), (40, 'Marc Spector', 'mspector@khonshu.org', '2026-06-10');

-- Insert 150 Sales (150 rows)
INSERT INTO sales (sale_id, user_id, product_id, sale_timestamp, quantity, discount_applied) VALUES
(1, 1, 1, '2026-01-16 09:30:00', 1, 0.00), (2, 2, 4, '2026-03-25 14:45:00', 2, 0.10),
(3, 3, 5, '2026-06-11 10:15:00', 1, 0.05), (4, 4, 2, '2026-01-20 18:20:00', 1, 0.00),
(5, 5, 3, '2026-01-22 08:10:00', 2, 0.15), (6, 6, 6, '2026-02-15 16:50:00', 1, 0.20),
(7, 7, 7, '2026-04-05 12:05:00', 1, 0.00), (8, 8, 8, '2026-02-05 09:00:00', 1, 0.25),
(9, 9, 9, '2026-04-15 11:30:00', 3, 0.00), (10, 10, 10, '2026-08-01 19:45:00', 1, 0.05),
(11, 11, 1, '2026-01-10 10:00:00', 1, 0.10), (12, 12, 2, '2026-02-14 08:30:00', 1, 0.00),
(13, 13, 3, '2026-03-12 15:20:00', 1, 0.00), (14, 14, 4, '2026-04-18 11:10:00', 5, 0.20),
(15, 15, 5, '2026-05-22 09:45:00', 1, 0.00), (16, 16, 6, '2026-06-05 14:30:00', 2, 0.15),
(17, 17, 7, '2026-01-25 17:15:00', 2, 0.10), (18, 18, 8, '2026-02-28 10:50:00', 1, 0.00),
(19, 19, 9, '2026-03-30 13:40:00', 4, 0.05), (20, 20, 10, '2026-04-25 16:20:00', 1, 0.00),
(21, 21, 1, '2026-05-15 08:55:00', 1, 0.15), (22, 22, 2, '2026-06-10 12:10:00', 1, 0.00),
(23, 23, 3, '2026-01-05 09:25:00', 3, 0.20), (24, 24, 4, '2026-02-08 14:15:00', 2, 0.00),
(25, 25, 5, '2026-03-15 11:35:00', 1, 0.10), (26, 26, 6, '2026-04-20 18:05:00', 1, 0.00),
(27, 27, 7, '2026-05-25 10:45:00', 1, 0.05), (28, 28, 8, '2026-06-22 15:50:00', 1, 0.25),
(29, 29, 9, '2026-01-12 13:10:00', 2, 0.00), (30, 30, 10, '2026-02-18 09:40:00', 1, 0.15),
(31, 31, 1, '2026-03-22 16:30:00', 1, 0.00), (32, 32, 2, '2026-04-28 11:55:00', 1, 0.10),
(33, 33, 3, '2026-05-30 14:20:00', 2, 0.00), (34, 34, 4, '2026-06-15 10:05:00', 1, 0.05),
(35, 35, 5, '2026-01-08 17:45:00', 1, 0.20), (36, 36, 6, '2026-02-12 08:15:00', 2, 0.00),
(37, 37, 7, '2026-03-18 12:50:00', 1, 0.15), (38, 38, 8, '2026-04-24 15:35:00', 1, 0.00),
(39, 39, 9, '2026-05-28 09:10:00', 5, 0.10), (40, 40, 10, '2026-06-20 18:25:00', 1, 0.25),
(41, 1, 3, '2026-02-10 14:00:00', 1, 0.00), (42, 2, 6, '2026-04-02 10:30:00', 1, 0.05),
(43, 3, 9, '2026-06-15 16:15:00', 2, 0.10), (44, 4, 1, '2026-03-05 09:45:00', 1, 0.00),
(45, 5, 4, '2026-05-12 13:20:00', 3, 0.15), (46, 6, 7, '2026-03-20 11:50:00', 1, 0.00),
(47, 7, 10, '2026-05-08 15:10:00', 1, 0.20), (48, 8, 2, '2026-06-01 08:40:00', 1, 0.00),
(49, 9, 5, '2026-01-28 17:05:00', 1, 0.10), (50, 10, 8, '2026-04-10 12:35:00', 1, 0.05),
(51, 11, 4, '2026-02-22 10:20:00', 2, 0.00), (52, 12, 7, '2026-05-05 14:55:00', 1, 0.15),
(53, 13, 10, '2026-06-25 09:15:00', 1, 0.00), (54, 14, 1, '2026-01-18 16:40:00', 1, 0.25),
(55, 15, 3, '2026-03-08 11:05:00', 2, 0.00), (56, 16, 6, '2026-05-18 13:50:00', 1, 0.10),
(57, 17, 9, '2026-02-02 08:25:00', 4, 0.00), (58, 18, 2, '2026-04-22 15:15:00', 1, 0.20),
(59, 19, 5, '2026-06-18 10:45:00', 1, 0.05), (60, 20, 8, '2026-01-30 18:10:00', 1, 0.00),
(61, 21, 4, '2026-03-14 12:00:00', 1, 0.15), (62, 22, 7, '2026-05-20 09:35:00', 1, 0.00),
(63, 23, 10, '2026-02-25 14:20:00', 1, 0.10), (64, 24, 1, '2026-04-12 16:55:00', 1, 0.00),
(65, 25, 3, '2026-06-08 11:30:00', 3, 0.25), (66, 26, 6, '2026-01-24 08:50:00', 1, 0.00),
(67, 27, 9, '2026-03-02 15:05:00', 2, 0.15), (68, 28, 2, '2026-05-02 10:15:00', 1, 0.00),
(69, 29, 5, '2026-06-28 13:40:00', 1, 0.20), (70, 30, 8, '2026-02-16 17:25:00', 1, 0.05),
(71, 31, 4, '2026-04-08 09:10:00', 4, 0.00), (72, 32, 7, '2026-06-12 14:45:00', 1, 0.10),
(73, 33, 10, '2026-01-02 11:20:00', 1, 0.00), (74, 34, 1, '2026-03-28 16:00:00', 1, 0.25),
(75, 35, 3, '2026-05-14 08:35:00', 2, 0.00), (76, 36, 6, '2026-06-24 13:10:00', 1, 0.15),
(77, 37, 9, '2026-02-06 10:55:00', 1, 0.00), (78, 38, 2, '2026-04-16 15:40:00', 1, 0.20),
(79, 39, 5, '2026-06-04 09:25:00', 1, 0.05), (80, 40, 8, '2026-01-22 18:00:00', 1, 0.00),
(81, 1, 7, '2026-04-10 14:15:00', 1, 0.10), (82, 2, 9, '2026-06-05 11:45:00', 3, 0.00),
(83, 3, 2, '2026-01-15 16:30:00', 1, 0.15), (84, 4, 6, '2026-03-25 09:05:00', 1, 0.00),
(85, 5, 10, '2026-05-30 13:50:00', 1, 0.25), (86, 6, 1, '2026-02-08 10:20:00', 1, 0.00),
(87, 7, 4, '2026-04-20 15:10:00', 2, 0.10), (88, 8, 5, '2026-06-18 08:55:00', 1, 0.00),
(89, 9, 8, '2026-01-05 17:40:00', 1, 0.20), (90, 10, 3, '2026-03-12 12:15:00', 2, 0.05),
(91, 11, 9, '2026-05-22 09:30:00', 1, 0.00), (92, 12, 1, '2026-02-18 14:45:00', 1, 0.15),
(93, 13, 6, '2026-04-28 11:10:00', 1, 0.00), (94, 14, 10, '2026-06-25 16:25:00', 1, 0.10),
(95, 15, 2, '2026-01-30 08:50:00', 1, 0.25), (96, 16, 4, '2026-03-08 13:35:00', 4, 0.00),
(97, 17, 8, '2026-05-15 10:00:00', 1, 0.05), (98, 18, 5, '2026-02-25 15:50:00', 1, 0.00),
(99, 19, 7, '2026-04-05 09:15:00', 1, 0.20), (100, 20, 3, '2026-06-10 18:30:00', 1, 0.00),
(101, 21, 9, '2026-01-20 12:45:00', 2, 0.10), (102, 22, 1, '2026-03-22 08:20:00', 1, 0.00),
(103, 23, 6, '2026-05-02 14:10:00', 2, 0.15), (104, 24, 10, '2026-06-28 10:55:00', 1, 0.00),
(105, 25, 2, '2026-02-12 16:40:00', 1, 0.25), (106, 26, 4, '2026-04-16 11:25:00', 3, 0.05),
(107, 27, 8, '2026-06-08 09:50:00', 1, 0.00), (108, 28, 5, '2026-01-10 15:30:00', 1, 0.20),
(109, 29, 7, '2026-03-15 13:05:00', 1, 0.00), (110, 30, 3, '2026-05-25 08:40:00', 2, 0.10),
(111, 31, 9, '2026-02-28 17:15:00', 1, 0.00), (112, 32, 1, '2026-04-24 12:50:00', 1, 0.15),
(113, 33, 6, '2026-06-15 09:35:00', 1, 0.00), (114, 34, 10, '2026-01-25 14:00:00', 1, 0.25),
(115, 35, 2, '2026-03-05 11:15:00', 1, 0.05), (116, 36, 4, '2026-05-18 16:05:00', 5, 0.00),
(117, 37, 8, '2026-06-22 08:25:00', 1, 0.20), (118, 38, 5, '2026-02-02 13:45:00', 1, 0.00),
(119, 39, 7, '2026-04-12 09:10:00', 1, 0.10), (120, 40, 3, '2026-06-04 15:55:00', 1, 0.00),
(121, 1, 6, '2026-01-14 10:30:00', 2, 0.15), (122, 2, 10, '2026-03-20 18:15:00', 1, 0.00),
(123, 3, 4, '2026-05-08 12:40:00', 1, 0.25), (124, 4, 8, '2026-06-16 08:50:00', 1, 0.05),
(125, 5, 2, '2026-02-10 14:25:00', 1, 0.00), (126, 6, 9, '2026-04-28 11:00:00', 3, 0.20),
(127, 7, 5, '2026-06-20 16:45:00', 1, 0.00), (128, 8, 1, '2026-01-08 09:35:00', 1, 0.10),
(129, 9, 7, '2026-03-14 15:10:00', 1, 0.00), (130, 10, 3, '2026-05-24 10:55:00', 2, 0.15),
(131, 11, 6, '2026-06-26 13:20:00', 1, 0.00), (132, 12, 10, '2026-02-22 08:45:00', 1, 0.25),
(133, 13, 4, '2026-04-06 17:30:00', 2, 0.05), (134, 14, 8, '2026-06-14 11:15:00', 1, 0.00),
(135, 15, 2, '2026-01-26 09:05:00', 1, 0.20), (136, 16, 9, '2026-03-28 14:50:00', 1, 0.00),
(137, 17, 5, '2026-05-10 10:25:00', 1, 0.10), (138, 18, 1, '2026-06-28 16:00:00', 1, 0.00),
(139, 19, 7, '2026-02-04 08:30:00', 2, 0.15), (140, 20, 3, '2026-04-18 12:10:00', 1, 0.00),
(141, 21, 6, '2026-06-02 18:45:00', 1, 0.25), (142, 22, 10, '2026-01-12 09:55:00', 1, 0.05),
(143, 23, 4, '2026-03-24 15:20:00', 4, 0.00), (144, 24, 8, '2026-05-16 11:40:00', 1, 0.20),
(145, 25, 2, '2026-06-25 08:15:00', 1, 0.00), (146, 26, 9, '2026-02-18 13:05:00', 2, 0.10),
(147, 27, 5, '2026-04-02 17:30:00', 1, 0.00), (148, 28, 1, '2026-06-12 10:50:00', 1, 0.15),
(149, 29, 7, '2026-01-28 14:25:00', 1, 0.00), (150, 30, 3, '2026-03-10 09:00:00', 3, 0.25);

Select * from users;

--TASK
--✨ String Manipulation--
select
	Split_part(email_address, '@', 2) as email_domain,
	count(*) as user_count
from users
group by email_domain
order by user_count DESC
LIMIT 3;

--✨ Date Math--
select * from users;
select * from users;
--Join the table
--select * from users join sales using (user_id);
with user_purchase as (
	select
		users.user_id,
		MIN(sales.sale_timestamp)::date - users.signup_date as days_to_purchase
	from users
	join sales on users.user_id = sales.user_id
	group by users.user_id, users.signup_date
)
select
upd.user_id,
upd.days_to_purchase,
s.sale_id,
s.sale_timestamp,
s.product_id
from user_purchase upd
inner join sales s on upd.user_id = s.user_id
order by s.sale_id ASC;

--✨ Complex Math --
--select * from sales;
--with profit as (
--select * 
--from sales 
--inner join products using (product_id)
--)
--select * from profit;

create temp table profit as 
	select *
	from sales
	inner join products using (product_id);
select * from profit;

Alter table profit
	drop column if exists sale_timestamp,
	drop column if exists product_name,
	drop column if exists user_id;

select * from profit;
Select 
	SUM ((unit_price * (1 - discount_applied) - unit_cost) * quantity) as total_laptop_profit
from profit
where sku in ('LAP-X1-BLK', 'LAP-X2-SLV');

-- ✨ Complex Aggregation --

create temp table highest_quantity as
	select 
	user_id,
	SUM(quantity) as highest_total_quantity
from sales
group by 
	user_id;
select * from highest_quantity;

select
highest_quantity.user_id,
highest_quantity.highest_total_quantity,
users.user_id,
users.full_name
from highest_quantity

inner join users on highest_quantity.user_id = users.user_id
group by users.user_id, users.full_name, highest_quantity.user_id, highest_quantity.highest_total_quantity

order by
	highest_total_quantity DESC
limit 5;

