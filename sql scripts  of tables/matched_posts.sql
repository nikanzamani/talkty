DROP TABLE IF EXISTS matched_posts;
CREATE TABLE matched_posts (

		id BIGINT NOT NULL AUTO_INCREMENT,
        post_one BIGINT NOT NULL,
        post_two BIGINT NOt NULL,
        matched_date DATETIME NOT NULL,
        
        PRIMARY KEY(id),
        
        CONSTRAINT fk_post1_mp
			FOREIGN KEY (post_one)
			REFERENCES sns.single_posts (id)
			ON DELETE NO ACTION
			ON UPDATE NO ACTION,
		
        CONSTRAINT fk_post2_mp
			FOREIGN KEY (post_two)
			REFERENCES sns.single_posts (id)
			ON DELETE NO ACTION
			ON UPDATE NO ACTION,
		
        UNIQUE INDEX idx_mps (post_one, post_two)
        
);