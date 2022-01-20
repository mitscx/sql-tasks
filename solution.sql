-- задание 1.1

SELECT `Department`,
		 COUNT(*)
FROM `task1_emp`
GROUP BY  `Department`;

-- задание 1.2

SELECT `Department`
FROM `task1_emp`
WHERE `Age` > 35
GROUP BY  `Department`
HAVING COUNT(`Department`) > 3;

-- задание 2.1

SELECT aut.name,
		 IFNULL(COUNT(news.AuthorID),
		 0) AS cnt
FROM task2_author AS aut
LEFT JOIN task2_news AS news
	ON aut.AuthorID = news.AuthorID
GROUP BY  aut.AuthorID

-- задание 2.2

SELECT aut.name,
		 COUNT(news.AuthorID) AS amount
FROM task2_author AS aut
LEFT JOIN task2_news AS news
	ON aut.AuthorID = news.AuthorID
GROUP BY  aut.AuthorID
HAVING COUNT(news.AuthorID) >= 1

-- задание 3

SELECT `Email`,
		 COUNT(*) AS amount
FROM `task3`
GROUP BY  `Email`
HAVING COUNT(*) >= 2;

-- задание 4

SELECT ID + 1 AS num
FROM task4 mo
WHERE NOT EXISTS
	(SELECT NULL
	FROM task4 mi
	WHERE mi.ID = mo.ID + 1 )
ORDER BY  ID LIMIT 1
