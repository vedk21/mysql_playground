/*
  Create database for instagram use case
*/
CREATE DATABASE instagram_use_case;

USE instagram_use_case;

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

-- Likes Tables --
CREATE TABLE likes (
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(user_id, photo_id),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id)
);

-- Followers Relationship Table --
CREATE TABLE follows (
    follower_id INT NOT NULL,
    followee_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(follower_id, followee_id),
    FOREIGN KEY(follower_id) REFERENCES users(id),
    FOREIGN KEY(followee_id) REFERENCES users(id),
    CHECK(follower_id <> followee_id)
);

-- Tags Table --
CREATE TABLE tags (
  id INT AUTO_INCREMENT,
  tag_name VARCHAR(255) UNIQUE,
  created_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id)
);

-- Photos to Tags Relationship Table --
CREATE TABLE photo_tags (
    photo_id INT NOT NULL,
    tag_id INT NOT NULL,
    PRIMARY KEY(photo_id, tag_id),
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    FOREIGN KEY(tag_id) REFERENCES tags(id)
);
