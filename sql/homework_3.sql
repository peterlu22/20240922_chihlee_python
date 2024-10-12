/*1.first_name為Jamie*/
SELECT * FROM customer
WHERE first_name = 'Jamie';

/*2.first_name是Jamie,同時last_name是Rice*/
SELECT * FROM customer
WHERE first_name = 'Jamie' AND last_name = 'Rice';

/*3.last_name是Rodriquez 或者 first_name是Adam*/
SELECT * FROM customer
WHERE last_name = 'Rodriquez' OR first_name = 'Adam';

/*4.取出first_name是Ann,Anne,Annie*/
SELECT * FROM customer
WHERE first_name IN ('Ann','Anne','Annie');

/*5.取出字串開頭是Ann的first_name*/
SELECT * FROM customer
WHERE first_name Like 'Ann%';

/*6.取出first_name第1個字元是A,同時first_name的字元長度是3到5的資料*/
SELECT * FROM customer
WHERE first_name Like 'A%' AND LENGTH(first_name) BETWEEN '3' AND '5';

/*7.取出first_name,前3字為Bra,但last_name不是Motley*/
SELECT * FROM customer
WHERE first_name Like 'Bra%' AND last_name != 'Motley';