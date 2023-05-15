INSERT INTO 
    CW_categories_of_item
VALUES
    (1, 'Обувь', 'изделие для предохранения ног от внешних воздействий и несущее утилитарные и эстетические функции.'),
    (2, 'Аксессуары', 'необязательный предмет, сопутствующий чему-либо; принадлежность чего-либо. Может улучшить, украсить или дополнить что-либо.'),
    (3, 'Электроника', 'Область науки и техники, занимающаяся созданием и практическим использованием различных электронных устройств и приборов, работа которых основана на изменении концентрации и перемещении заряженных частиц в вакууме, газе или твердых кристаллических телах, и других физических явлениях'),
    (4, 'Мебель', 'Совокупность передвижных или встроенных изделий для обстановки жилых и общественных помещений и различных зон пребывания человека. Предназначается для сидения, лежания, приготовления пищи, выполнения письменных и других работ, разделения помещения на отдельные зоны.'),
    (5, 'Продукты', 'То, что было произведено, создано или получено в результате какого-либо процесса или действия'),
    (6, 'Бытовая техника', 'Обозначает совокупность устройств и процедур, работающих на энергии, используемых для хранения, приготовления пищи, стирки, мытья посуды и пола в домашних условиях.'),
    (7, 'Алкоголь', 'Препарат-депрессант, являющийся активным ингредиентом в таких напитках, как пиво, вино и крепкие спиртные напитки. Это один из старейших и наиболее часто употребляемых рекреационных наркотиков, вызывающий характерные эффекты алкогольной интоксикации'),
    (8, 'Лекарственное средство', 'Вещество или смесь веществ синтетического или природного происхождения в виде лекарственной формы, применяемые для профилактики, диагностики и лечения заболеваний.');
   
   
   
   
INSERT INTO 
    CW_item
VALUES
    (1,'кроссовки adidas', 'Кроссовки adidas по доступной цене.',  15, 2803, 5.0, 'Эти кроссовки муж уже относил 3 года и они выглядят почти как новые. Качество очень хорошее.'),
    (2,'Сумка DIOR', 'Откройте для себя сумки из последней коллекции для женщин на Dior.com.',  5, 15467, 3.0, 'Подарили на ДР сумку Lady Dior (оригинал). С первого же дня эта сумка стала как колокольчик прокаженного, на работе обсмеяли, что повелась на подделку.'),
    (3,'айфон 11', 'Легендарный смартфон.',  8, 54600, 1.8, 'великолепный телефон.'),
    (4,'Стол икеа', 'Классический стол',  100, 9990, 4.0, 'Качество посредственное.'),
    (5,'Огурец', 'Свежий огурец.',  150, 150, 2.0, 'Оказался протухшим.'),
    (6,'Холодильник', 'Охлажадает лучше всего.',  34, 98765, 3.0, 'Сильно шумит.'),
    (7,'безалкогольно пиво', 'Придает свежести.',  785, 98, 4.0, 'Оно безалкогольное.'),
    (8,'Лоперамид', 'Лучшее средство при отравлении.',  754, 650, 5.0, 'Реально лучше всего помогает.');
    
 INSERT INTO 
    CW_item
VALUES
	(9,'Стиральная машина', 'убирает идеально',  4, 29765, 3.0, 'Сильно шумит.');
    
INSERT INTO 
	CW_categ_and_item
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8,8);
	
INSERT INTO 
	CW_categ_and_item
VALUES
	(6, 9);

INSERT INTO 
    CW_k_customers 
VALUES
    (1, '32313241324@mail.ru', 'lol2334431234', 'Ivan', ' Ivanov', 'lomonosova 24'),
    (2, '323141324@mail.ru', 'lol23342141234', 'Ivan1', ' Ivanov1', 'lomonosova 25'),
    (3, '3231356324@mail.ru', 'lol234341234', 'Ivan2', ' Ivanov2', 'lomonosova 26'),
    (4, '3241324@mail.ru', 'lol2334111234', 'Ivan3', ' Ivanov3', 'lomonosova 27'),
    (5, '32313546241324@mail.ru', 'lofdrl23341234', 'Ivan4', ' Ivanov4', 'lomonosova 28'),
    (6, '3236413241324@mail.ru', 'lfdol23ew341234', 'Ivan5', ' Ivanov5', 'lomonosova 29'),
    (7, '323132465441324@mail.ru', 'lrwerol23341234', 'Ivan6', ' Ivanov6', 'lomonosova 30'),
    (8, '323134654641324@mail.ru', 'lqewl23341234', 'Ivan7', ' Ivano7v', 'lomonosova 31');
   
   
 INSERT INTO 
 	CW_shopping_cart
 VALUES
 	(1, 1, 2),
 	(1, 2, 1),
 	(2, 1, 1),
 	(3, 5, 1);
 
 
 INSERT INTO 
    CW_k_order 
VALUES
    (1, 'delivered', '1999-01-08', 5, 1, 1),
    (2, 'delivered', '2016-02-08', 1, 1, 2),
	(3, 'delivered', '2018-02-08', 1, 1, 3),
    (4, 'not delivered', '2017-01-08', 2, 2, 1),
    (5, 'not delivered', '2019-02-10', 3, 3, 4),
    (6, 'not delivered', Null, 2, 3, 6);
   
   
   
 INSERT INTO 
    CW_ordered_item 
VALUES
	(1, 1),
	(1, 2);
