Create database `DB_for_Project`;
Use `DB_for_Project`;

-- Question # 2
CREATE TABLE clients ( 
     client_id INT NOT NULL,
     client_name VARCHAR(100),
     address VARCHAR(200), 
     state VARCHAR (100),
     phone_number VARCHAR(45),
     PRIMARY KEY (client_id)
     );

INSERT INTO clients (client_id,	client_name, address, state, phone_number)
VALUES
(1,'Vinte','3 Nevada Parkway, Syracuse','NY','315-252-7305'),
(2,'Myworks','34267 Glendale Parkway, Huntington','WV','304-659-1170'),
(3,'Yadel','096 Pawling Parkway, San Francisco','CA','415-144-6037'),
(4,'Kwideo','81674 Westerfield Circle, Waco','TX','254-750-0784'),
(5,'Topiclounge','0863 Farmco Road, Portland','OR','971-888-9129')
 ;

-- QUESTION # 4 (a)
SELECT DISTINCT state
FROM mosh_customers
;    
 
-- QUESTION # 4 (b) 
SELECT product_id, unit_price, round(unit_price * 1.1, 2) AS new_unit_price
FROM mosh_products
;

-- QUESTION # 4 (c) 
SELECT invoice_id, client_id, invoice_total, payment_total, invoice_date_new, due_date
FROM mosh_invoices
WHERE invoice_date_new > '2019-06-30'
;

-- QUESTION # 4 (d) 
SELECT customer_id, first_name, birth_date_new, points
FROM mosh_customers
WHERE birth_date_new > '1990-12-31' AND points > 1000
;

-- QUESTION # 4 (e) 
SELECT *
FROM mosh_payments
Where client_id = 5 AND amount > 20
;

-- QUESTION # 4 (f) 
SELECT *
FROM mosh_products
WHERE unit_price < (
         SELECT unit_price
         FROM mosh_products
         WHERE name = 'Lettuce - Romaine, Heart'
 )
 ;

-- QUESTION # 5 (a) 
SELECT *
FROM mosh_payment_methods pm
INNER JOIN mosh_payments p
     ON pm.payment_method_id = p.payment_method 
;

-- QUESTION # 5 (b)
SELECT c.client_id, client_name, state, payment_total, due_date, payment_date, phone_number
FROM clients c
INNER JOIN mosh_invoices i
     ON c.client_id = i.client_id 
;

-- QUESTION # 6 (a) 
SELECT c.client_id, client_name, invoice_id, invoice_total
FROM clients as c
left JOIN mosh_invoices as mi
       ON c.client_id = mi.client_id           
       WHERE invoice_id is NULL
;       
             
-- QUESTION # 6 (b) 
 WITH invoice_table as (
              SELECT invoice_total, client_id
              FROM mosh_invoices
              WHERE invoice_total > ALL (SELECT invoice_total
                  FROM mosh_invoices
                  WHERE client_id = 3)
            )      
SELECT c.client_id, client_name, address, state, phone_number, invoice_total
FROM clients as c
INNER JOIN invoice_table as it
       ON c.client_id = it.client_id           
;                  
                  
-- QUESTION # 6 (c)
SELECT c.client_id, client_name, invoice_total, rank() over(partition by client_name order by invoice_total) as Rank_num
FROM clients as c
INNER JOIN mosh_invoices as mi
      ON c.client_id = mi.client_id    
;

-- QUESTION # 6 (d) 
 SELECT c.client_id, client_name, count(invoice_total) as invoice_count
 FROM mosh_invoices as mi
 JOIN clients as c
       ON mi.client_id = c.client_id
 Group by client_id
 Having invoice_count >= 2
 ;

-- QUESTION # 6 (e)

SELECT mp.invoice_id, number, payment_method, mi.client_id 
FROM mosh_payments as mp
JOIN mosh_invoices as mi
        ON mp.client_id = mi.client_id   
        Where payment_method = 1
;        
