/*
  Create database for instagram use case
*/
CREATE DATABASE instagram_use_case;

-- User Table --
CREATE TABLE users (
    id INT AUTO_INCREMENT,
    username VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id)
);

-- Photos Table --
CREATE TABLE photos (
    id INT AUTO_INCREMENT,
    image_url VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

-- Comments Table --
CREATE TABLE comments (
    id INT AUTO_INCREMENT,
    comment_text VARCHAR(255) NOT NULL,
    photo_id INT NOT NULL,
    user_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    FOREIGN KEY(user_id) REFERENCES users(id)
);
