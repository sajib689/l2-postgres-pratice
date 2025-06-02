-- Active: 1748278690724@@127.0.0.1@5432@sajib

CREATE Table "users" (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE Table post (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    title VARCHAR(200) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO "users" (name, email) VALUES
('Alice', 'alice@gmail.com'),
('Bob', 'bob@gmail.com'),
('Charlie', 'charlie@gmail.com'),
('David', 'david@gmail.com')


INSERT INTO post (user_id, title, content) VALUES
(1, 'First Post', 'This is the content of the first post.'),
(1, 'Second Post', 'This is the content of the second post.'),
(2, 'Third Post', 'This is the content of the third post.'),
(3, 'Fourth Post', 'This is the content of the fourth post.'),
(4, 'Fifth Post', 'This is the content of the fifth post.');

SELECT * from users;
SELECT * from post;  

SELECT * FROM post
JOIN users ON post.user_id = users.id;

SELECT * FROM post
CROSS JOIN users;


SELECT * FROM post
NATURAL JOIN users;