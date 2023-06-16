/* Создайте запрос который вернет список всех фильмов из таблицы movies
Если rating > 8 тогда возвращаем в новое поле movie значение поля title + текст: is Highly Rated
Если rating > 6 тогда возвращаем в новое поле movie значение поля title + текст: is Rated Average
Иначе возвращаем в новое поле movie значение поля title + текст: is Low Rated
Пример того как должна выглядеть строка с фильмом: The Shawshank Redemption is Highly Rated*/

SELECT
CASE 
    WHEN rating > 8 THEN  concat( title ," ",'is'," ", 'Highly Rated')
    WHEN rating > 6 THEN  concat( title ," ",'is'," ", 'Rated Average')
    ELSE concat( title ," ",'is'," ", 'Low Rated')
    END AS movie       
  FROM movies;
   

/* Создайте запрос который вернет список всех фильмов из таблицы movies
Если rating > 8 тогда возвращаем в новое поле movie значение поля title + текст: is Highly Rated
Иначе возвращаем в новое поле movie значение поля title + текст: is Low Rated
Пример того как должна выглядеть строка с фильмом: The Shawshank Redemption is Highly Rated */

SELECT
 IF (rating >8, concat( title ," ",'is'," ", 'Highly Rated'), concat( title ," ",'is'," ", 'Low Rated')) AS movie    
  FROM movies;
   
   
/* Создайте запрос который вернет список всех фильмов из таблицы movies
Если rating > 8 тогда возвращаем в новое поле movie значение поля release_year и title + текст: is Highly Rated
Иначе возвращаем в новое поле movie значение поля release_year и title + текст: is Low Rated
Пример того как должна выглядеть строка с фильмом: 1994 - The Shawshank Redemption is Highly Rated
Результат должен быть отсортирован по новому полю movie в порядке убывания. */

SELECT
      IF (rating >8, concat( release_year," ","-"," ", title ," ",'is'," ", 'Highly Rated'), concat(release_year," ","-"," ", title ," ",'is'," ", 'Low Rated')) AS movie    
  FROM movies
 ORDER BY movie DESC;
 

/*Создайте запрос который вернет список всех отзывов из таблицы reviews.
Если длина значения поля comment больше 10 символов тогда, обрезаем значение поля comment до 7 символов + добавляем в конце ...
Например: Great m...
Результат должен быть отсортирован по полю comment в порядке убывания. */

SELECT 
IF(LENGTH (comment)>10,CONCAT((LEFT(comment, 7)),"..."), comment) AS comment
  FROM reviews
 ORDER BY comment DESC;
