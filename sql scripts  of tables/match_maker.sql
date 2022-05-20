DROP TABLE IF EXISTS match_maker;
CREATE TABLE match_make (
	id BIGINT NOT NULL AUTO_INCREMENT,
    post_one BIGINT NOT NULL,
    post_two BIGINT NOT NULL,
    status VARCHAR(25) NOT NULL DEFAULT 'pending',
    
    PRIMARY KEY (id),
    
    INDEX idx (post_one, post_two),
	CONSTRAINT fk_post1_match_maker
		FOREIGN KEY (post_one)
		REFERENCES sns.single_posts (id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	
    CONSTRAINT fk_post2_match_maker
		FOREIGN KEY (post_two)
		REFERENCES sns.single_posts (id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
    
);