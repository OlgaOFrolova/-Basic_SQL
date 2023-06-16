/* �������� ������, ������� ������ ������ ���� ������� �� ������� movies
��������� ����� ���� movie �������� �������� ����� ��������� �������� ���� id, title, release_year
��������� ���������� ������������� � ������ ������� � �������� � ������ ����.
������: #1 the shawshank redemption (1994)*/

SELECT CONCAT('#', id,' ', LOWER(title),' (',release_year, ')' ) AS movie
  FROM movies

/* �������� ������, ������� ������ ������ ���� ������� �� ������� movies
��������� ����� ���� stars �������� �������� ����� ��������� ���������� ����� �� 1 �� 5 ��� ������� ������. */

SELECT title,
       ELT(rating/2,
           '?????',
           '?????',
           '?????',
           '?????',
           '?????') AS stars
  FROM movies
 ORDER BY rating DESC;

/* �������� ������, ������� ������ ������ ���� ������� �� ������� movies � ������� �������� ����� ���� title ������ 15 ��������. */

SELECT title
  FROM movies
 WHERE LENGTH(title)>15

/*�������� ������, ������� ������ ������ ���� ������� �� ������� movies, � ������� �������� ���� title ��������� � ������ ����, ������: the-shawshank-redemption � ���������� ����������� �������� ���� title � ����� ���� slug �������������� �������. */

SELECT LOWER(REPLACE(REPLACE(REPLACE(REPLACE(title,' ','-'),'.',''),',',''),':','')) AS slug
  FROM movies

/* �������� ������, ������� ������ ���������� ������� �� ������� reviews � ������� �������� ����� ���� comment ������ 20 �������� � �� ���������� � The */

SELECT COUNT(comment) AS count 
  FROM reviews
 WHERE comment NOT LIKE 'The%'
 AND LENGTH(comment)>20