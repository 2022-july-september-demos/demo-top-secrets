-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS users CASCADE;

DROP TABLE IF EXISTS secrets;

CREATE TABLE users (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  email VARCHAR UNIQUE,
  password_hash VARCHAR NOT NULL
);

CREATE TABLE secrets (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  title VARCHAR,
  description VARCHAR,
  created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO
  secrets (title, description)
VALUES
  ('Shhhhhh', 'Top Secret: Benny is adorable'),
  ('AREA 52', 'Aliens are real.');