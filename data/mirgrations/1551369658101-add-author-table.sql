<!-- Query 1 -->
CREATE TABLE authors (id SERIAL PRIMARY KEY, name VARCHAR(255));

<!-- Query 2:  -->
INSERT INTO authors(name) SELECT DISTINCT author FROM books;

<!-- Query 3:  -->
ALTER TABLE books ADD COLUMN author_id INT;

<!-- Query 4:  -->
UPDATE books SET author_id=author.id FROM (SELECT * FROM authors) AS author WHERE books.author = author.name;

<!-- Query 5:  -->
ALTER TABLE books DROP COLUMN author;

<!-- Query 6:  -->
ALTER TABLE books ADD CONSTRAINT fk_authors FOREIGN KEY (author_id) REFERENCES authors(id);