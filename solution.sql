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
		 COUNT(news.AuthorID) AS cnt
FROM task2_author AS aut
LEFT JOIN task2_news AS news
	ON aut.AuthorID = news.AuthorID
GROUP BY  aut.AuthorID;

-- задание 2.2

SELECT aut.name,
		 COUNT(news.AuthorID) AS amount
FROM task2_author AS aut
LEFT JOIN task2_news AS news
	ON aut.AuthorID = news.AuthorID
WHERE news.AuthorID IS NOT NULL
GROUP BY  aut.AuthorID;

-- задание 3

SELECT `Email`,
		 COUNT(*) AS amount
FROM `task3`
GROUP BY  `Email`
HAVING COUNT(*) >= 2;

-- задание 4

SELECT mo.ID + 1 AS num
FROM task4 mo
LEFT JOIN task4 mi
	ON (mi.ID) = (mo.ID +1)
WHERE mi.ID IS NULL
ORDER BY  mo.ID LIMIT 1;
