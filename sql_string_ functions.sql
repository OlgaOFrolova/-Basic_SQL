/* Создайте запрос, который вернет список всех фильмов из таблицы movies
Составить новое поле movie значения которого будет содержать значения поля id, title, release_year
Результат необходимо преобразовать в нижний регистр и привести к такому виду.
Пример: #1 the shawshank redemption (1994)*/

SELECT CONCAT('#', id,' ', LOWER(title),' (',release_year, ')' ) AS movie
  FROM movies

/* Создайте запрос, который вернет список всех фильмов из таблицы movies
Составить новое поле stars значения которого будет содержать количество звезд от 1 до 5 для каждого фильма. */

SELECT title,
       ELT(rating/2,
           '?????',
           '?????',
           '?????',
           '?????',
           '?????') AS stars
  FROM movies
 ORDER BY rating DESC;

/* Создайте запрос, который вернет список всех фильмов из таблицы movies у которых значение длины поля title больше 15 символов. */

SELECT title
  FROM movies
 WHERE LENGTH(title)>15

/*Создайте запрос, который вернет список всех фильмов из таблицы movies, в котором значение поля title приведено к такому виду, пример: the-shawshank-redemption и записывает обновленное значение поля title в новое поле slug результирующей таблицы. */

SELECT LOWER(REPLACE(REPLACE(REPLACE(REPLACE(title,' ','-'),'.',''),',',''),':','')) AS slug
  FROM movies

/* Создайте запрос, который вернет количество отзывов из таблицы reviews у которых значение длины поля comment больше 20 символов и не начинаются с The */

SELECT COUNT(comment) AS count 
  FROM reviews
 WHERE comment NOT LIKE 'The%'
 AND LENGTH(comment)>20