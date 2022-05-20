USE sns;

DROP TABLE IF EXISTS user_likes;
CREATE TABLE user_likes (

id BIGINT NOT NULL AUTO_INCREMENT,
source_id BIGINT NOT NULL,
target_id BIGINT NOT NULL,
liked_date DATETIME NOT NULL,

PRIMARY KEY (id),
INDEX idx (source_id, target_id),
CONSTRAINT fk_source_likes
	FOREIGN KEY (source_id)
    REFERENCES sns.users (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,

CONSTRAINT  fk_target_likes
	FOREIGN KEY (target_id)
    REFERENCES sns.users(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    
CONSTRAINT uk_like UNIQUE (source_id, target_id) 


);