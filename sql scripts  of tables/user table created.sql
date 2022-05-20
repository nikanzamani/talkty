USE sns;

CREATE TABLE users (
	id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
	user_id VARCHAR(50) NOT NULL,
    birth_date VARCHAR(50) NULL DEFAULT NULL,
    bio TINYTEXT NULL DEFAULT NULL,
    password_hash VARCHAR(32) NOT NULL,
    email VARCHAR(50) NOT NULL,
    followers_count INT NOT NULL DEFAULT 0,
    following_count INT NOT NULl DEFAULT 0,
    post_count INT NOT NULL DEFAULT 0,
    profile_image VARCHAR(50) NULL,
    created_date DATETIME,
    
    PRIMARY KEY(id),
    UNIQUE INDEX uq_user_id(user_id),
    UNIQUE INDEX uq_email(email)
);