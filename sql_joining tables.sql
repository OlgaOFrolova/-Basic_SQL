/* —оздайте запрос который вернет список всех фильмов из таблицы movies
≈сли rating > 8 тогда возвращаем в новое поле movie значение пол€ title + текст: is Highly Rated
≈сли rating > 6 тогда возвращаем в новое поле movie значение пол€ title + текст: is Rated Average
»наче возвращаем в новое поле movie значение пол€ title + текст: is Low Rated
ѕример того как должна выгл€деть строка с фильмом: The Shawshank Redemption is Highly Rated*/

SELECT
CASE 
    WHEN rating > 8 THEN  concat( title ," ",'is'," ", 'Highly Rated')
    WHEN rating > 6 THEN  concat( title ," ",'is'," ", 'Rated Average')
    ELSE concat( title ," ",'is'," ", 'Low Rated')
    END AS movie       
  FROM movies;
   

/* —оздайте запрос который вернет список всех фильмов из таблицы movies
≈сли rating > 8 тогда возвращаем в новое поле movie значение пол€ title + текст: is Highly Rated
»наче возвращаем в новое поле movie значение пол€ title + текст: is Low Rated
ѕример того как должна выгл€деть строка с фильмом: The Shawshank Redemption is Highly Rated */

SELECT
 IF (rating >8, concat( title ," ",'is'," ", 'Highly Rated'), concat( title ," ",'is'," ", 'Low Rated')) AS movie    
  FROM movies;
   
   
/* —оздайте запрос который вернет список всех фильмов из таблицы movies
≈сли rating > 8 тогда возвращаем в новое поле movie значение пол€ release_year и title + текст: is Highly Rated
»наче возвращаем в новое поле movie значение пол€ release_year и title + текст: is Low Rated
ѕример того как должна выгл€деть строка с фильмом: 1994 - The Shawshank Redemption is Highly Rated
–езультат должен быть отсортирован по новому полю movie в пор€дке убывани€. */

SELECT
      IF (rating >8, concat( release_year," ","-"," ", title ," ",'is'," ", 'Highly Rated'), 
          concat(release_year," ","-"," ", title ," ",'is'," ", 'Low Rated')) AS movie    
  FROM movies
 ORDER BY movie DESC;
 

/*—оздайте запрос который вернет список всех отзывов из таблицы reviews.
≈сли длина значени€ пол€ comment больше 10 символов тогда, обрезаем значение пол€ comment до 7 символов + добавл€ем в конце ...
Ќапример: Great m...
–езультат должен быть отсортирован по полю comment в пор€дке убывани€. */

SELECT 
IF(LENGTH (comment)>10,CONCAT((LEFT(comment, 7)),"..."), comment) AS comment
  FROM reviews
 ORDER BY comment DESC;