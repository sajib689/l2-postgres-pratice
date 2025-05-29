-- Active: 1748278690724@@127.0.0.1@5432@sajib
INSERT INTO "user" (username, password)
VALUES ('sajib', 'sajib1234');

SELECT * FROM "user"
WHERE username = 'user5' AND PASSWORD = 'user5';