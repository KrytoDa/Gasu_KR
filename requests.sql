----------------------- 1. Вывести список всех товаров, у которых количество на складе меньше 10 единиц. ------------------------------------------------------------------------

SELECT title AS 'Товары'
FROM CW_item  
WHERE amount < 10;


----------------------- 2. Найти всех пользователей, которые совершили заказ в определенный период времени. ------------------------------------------------------------------------

SELECT k_c.first_name AS 'Клиент', ko.payment_date AS 'Дата покупки'
FROM CW_k_customers k_c
JOIN CW_k_order ko ON ko.k_customers_id = k_c.k_customers_id
WHERE YEAR(ko.payment_date) > 2016 AND YEAR(ko.payment_date) < 2019 ;

----------------------- 3. Найти всех пользователей, которые совершили заказ в определенный период времени. ------------------------------------------------------------------------

SELECT order_id AS 'Номер заказа', status,  amount,k_customers_id
FROM CW_k_order ko  
WHERE k_customers_id = 1;

----------------------- 4. Посчитать общую сумму продаж за определенный период времени. ------------------------------------------------------------------------

SELECT sum(k.amount * i.price) AS 'Общая сумма продаж'
FROM CW_k_order k
JOIN CW_item i ON i.item_id = k.item_id
WHERE YEAR(k.payment_date) BETWEEN 1999 AND 2010;


----------------------- 5. Найти все товары, цена на которые больше определенной суммы.. ------------------------------------------------------------------------

SELECT title as 'Товар'
FROM CW_item 
WHERE price > 2000;

----------------------- 6. Вывести список всех заказов, которые не были оплачены вовремя. ------------------------------------------------------------------------

SELECT order_id AS 'Номер заказа', status AS 'Статус',  item_id AS 'Товар', amount AS 'Количество товара'
FROM CW_k_order cko 
WHERE payment_date IS NULL;


----------------------- 7.Найти все категории товаров и количество товаров в каждой категории. ------------------------------------------------------------------------

SELECT cof.title AS 'Категория', COUNT(c.item_id) AS 'Количество товаров'
FROM CW_categories_of_item cof
JOIN CW_categ_and_item c ON c.categories_of_item_id = cof.categories_of_item_id 
GROUP BY cof.title 
ORDER BY COUNT(c.item_id) DESC;

----------------------- 8. Вывести список всех товаров, отсортированных по рейтингу. ------------------------------------------------------------------------

SELECT title AS 'Товар', rating AS 'Оценка товара'
FROM CW_item 
ORDER BY rating DESC;

----------------------- 9. Посчитать количество продаж каждого товара за определенный период времени. ------------------------------------------------------------------------

SELECT cw.title AS 'Товар', COUNT(coi.item_id) AS 'Количество продаж'
FROM CW_item cw
JOIN CW_ordered_item coi ON coi.item_id = cw.item_id
JOIN CW_k_order cko ON cko.order_id = coi.order_id
WHERE YEAR(cko.payment_date) BETWEEN 1999 AND 2023
GROUP BY cw.title;