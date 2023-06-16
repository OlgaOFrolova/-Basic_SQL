/* �������� ������� movies � ������:
id ���� INT � ������ PRIMARY KEY AUTO_INCREMENT
title ���� VARCHAR(255) NOT NULL
release_year ���� INT
genre ���� VARCHAR(255)
rating ���� INT
budget ���� INT */


CREATE TABLE movies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    release_year INT,
    genre VARCHAR(255),
    rating INT,
    budget INT    
);

/* �������� ������ ������� ������� ��� ����� ������ � ������� movies */

INSERT INTO movies (title, release_year, genre, rating, budget)
VALUES ('Inception', 2010, 'Thriller', 8, 160000000),
       ('Pulp Fiction', 1994, 'Crime', 8, 31500000),
       ('Fight Club', 1999, 'Drama', 8, 63000000);

/*�������� ������, ������� ������� �������� � ������� rating ��� ������ � ���������� "The Lion King" �� 9 � �������� � ������� budget �� 50000000 */

UPDATE movies
  SET rating = 9,
       budget = 50000000
 WHERE title = 'The Lion King';

/*�������� ������, ������� ������ ������ �� ������� movies, ��� �������� ������� id ����� 2, 4, 8.*/

DELETE FROM movies
 WHERE id IN ( 2, 4, 8 );

/*�������� ������, ������� ������ ������ �� ������� movies, ��� �������� ������� genre ����� Drama ��� Crime.*/

DELETE FROM movies
 WHERE genre IN ( 'Drama','Crime');

