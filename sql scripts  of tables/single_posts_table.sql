USE sns;

DROP TABLE IF EXISTS single_posts;
CREATE TABLE single_posts(
	id BIGINT NOT NULL AUTO_INCREMENT,
    user_id BIGINT NOT NULL,
    content VARCHAR(5000) NULL DEFAULT NULL,
    status BOOLEAN NOT NULL,
    posted_by varchar(50) NOT NULL,
    posted_Date DATETIME NOT NULL,
    
    PRIMARY KEY(id),
    
   CONSTRAINT  fk_single_posts
	FOREIGN KEY (user_id)
    REFERENCES sns.users(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
	
    INDEX idx (user_id)
    
    

);