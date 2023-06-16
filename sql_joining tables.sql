/* �������� ������ ������� ������ ������ ���� ������� �� ������� movies
���� rating > 8 ����� ���������� � ����� ���� movie �������� ���� title + �����: is Highly Rated
���� rating > 6 ����� ���������� � ����� ���� movie �������� ���� title + �����: is Rated Average
����� ���������� � ����� ���� movie �������� ���� title + �����: is Low Rated
������ ���� ��� ������ ��������� ������ � �������: The Shawshank Redemption is Highly Rated*/

SELECT
CASE 
    WHEN rating > 8 THEN  concat( title ," ",'is'," ", 'Highly Rated')
    WHEN rating > 6 THEN  concat( title ," ",'is'," ", 'Rated Average')
    ELSE concat( title ," ",'is'," ", 'Low Rated')
    END AS movie       
  FROM movies;
   

/* �������� ������ ������� ������ ������ ���� ������� �� ������� movies
���� rating > 8 ����� ���������� � ����� ���� movie �������� ���� title + �����: is Highly Rated
����� ���������� � ����� ���� movie �������� ���� title + �����: is Low Rated
������ ���� ��� ������ ��������� ������ � �������: The Shawshank Redemption is Highly Rated */

SELECT
 IF (rating >8, concat( title ," ",'is'," ", 'Highly Rated'), concat( title ," ",'is'," ", 'Low Rated')) AS movie    
  FROM movies;
   
   
/* �������� ������ ������� ������ ������ ���� ������� �� ������� movies
���� rating > 8 ����� ���������� � ����� ���� movie �������� ���� release_year � title + �����: is Highly Rated
����� ���������� � ����� ���� movie �������� ���� release_year � title + �����: is Low Rated
������ ���� ��� ������ ��������� ������ � �������: 1994 - The Shawshank Redemption is Highly Rated
��������� ������ ���� ������������ �� ������ ���� movie � ������� ��������. */

SELECT
      IF (rating >8, concat( release_year," ","-"," ", title ," ",'is'," ", 'Highly Rated'), 
          concat(release_year," ","-"," ", title ," ",'is'," ", 'Low Rated')) AS movie    
  FROM movies
 ORDER BY movie DESC;
 

/*�������� ������ ������� ������ ������ ���� ������� �� ������� reviews.
���� ����� �������� ���� comment ������ 10 �������� �����, �������� �������� ���� comment �� 7 �������� + ��������� � ����� ...
��������: Great m...
��������� ������ ���� ������������ �� ���� comment � ������� ��������. */

SELECT 
IF(LENGTH (comment)>10,CONCAT((LEFT(comment, 7)),"..."), comment) AS comment
  FROM reviews
 ORDER BY comment DESC;