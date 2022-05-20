USE sns;

DROP TABLE IF EXISTS user_follower;
CREATE TABLE user_follower (

id BIGINT NOT NULL AUTO_INCREMENT,
follower BIGINT NOT NULL,
followee BIGINT NOT NULL,
followed_date DATETIME NOT NULL,

PRIMARY KEY (id),
INDEX idx (follower, followee),
CONSTRAINT fk_source
	FOREIGN KEY (follower)
    REFERENCES sns.users (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    
    
CONSTRAINT  fk_target
	FOREIGN KEY (followee)
    REFERENCES sns.users(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    
CONSTRAINT uk_follower UNIQUE (follower, followee) 

);