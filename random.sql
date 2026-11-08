
ALTER TABLE sales_rep 
ALTER COLUMN last_name DROP NOT NULL;

ALTER TABLE sales_rep 
ALTER COLUMN first_name DROP NOT NULL;
--drop table sales_rep / DROP TABLE IF EXISTS sales_prep

INSERT
	INTO
	sales_rep(rep_id, first_name, last_name, address, city, state, postal,
cell_phone, commision, rate)
VALUES(
	'05', 'Susan', 'Garcia', 
	'42 Mountain Lane', 'Cody', 'WY', '82414', '307-824-1245', 12743.16, 0.04)
INSERT
	INTO
	sales_rep(rep_id, first_name, last_name, address, city, state, postal,
cell_phone, commision, rate)
VALUES('06', 'Veni', 'Agustina', '34 Lala land', 'Buda', 'BE', '32432', '039-098-34232', 12323.13, 0.04)
INSERT
	INTO
	sales_rep(rep_id, first_name, last_name)
VALUES('25', 'Donna', 'Sanchar');

UPDATE
	sales_rep
SET
	last_name = 'Salinas'
WHERE
	rep_id = '25';

SELECT
	*
FROM
	sales_rep
DELETE
FROM
	sales_rep
WHERE
	rep_id = '25';
--have to use '' to specify the value (if the type of value is char)

SELECT
	*
FROM
	sales_rep

ALTER TABLE customer
ALTER COLUMN last_name DROP NOT NULL;

DROP TABLE IF EXISTS customer
SELECT
	*
FROM
	customer;

DROP TABLE customer;

DROP TABLE invoice_line ;

DROP TABLE invoices ;

DROP TABLE item;

DROP TABLE sales_rep ;
