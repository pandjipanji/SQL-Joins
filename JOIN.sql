
#JOIN BIASA
SELECT * FROM costumers,orders WHERE costumers.ID = orders.COSTUMER_ID


#INNER JOIN
SELECT costumers.NAME, orders.DATE FROM costumers INNER JOIN orders ON costumers.ID = orders.COSTUMER_ID
#irisan data pada kedua tabel yang saling berelasi


#LEFT JOIN
SELECT costumers.NAME, orders.DATE FROM costumers LEFT JOIN orders ON costumers.ID = orders.COSTUMER_ID
#menghasilkan data pada table costumers dengan record NULL, karena tidak semua record data pada table costumers berelasi dengan table orders


#RIGTH JOIN
SELECT costumers.NAME, orders.DATE FROM costumers RIGHT JOIN orders ON costumers.ID = orders.COSTUMER_ID
#menghasilkan data yang sama yang berasal dari table orders meskipun ada data pada table costumers yang NULL


#FULL JOIN
SELECT NAME, DATE FROM costumers LEFT JOIN orders ON costumers.ID = orders.COSTUMER_ID UNION SELECT NAME, DATE FROM costumers RIGHT JOIN orders ON costumers.ID = orders.COSTUMER_ID

#SELF JOIN
SELECT a.NAME,b.AGE FROM costumers a,costumers b WHERE a.salary < b.salary


#CROSS JOIN
SELECT NAME, AGE, date, amount FROM costumers,orders
