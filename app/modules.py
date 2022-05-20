from pydantic import BaseModel,EmailStr
from datetime import date

class userModules(BaseModel):
    id:int
    user_name:str
    user_id:str
    birth_date:date
    register_date:date
    bio:str
    password_hash:str
    email_address:str
    profile_image_path:str
    followers_count:int
    following_count:int
    post_count:int
    # 11- followers list
	# 12- following list
	# 13- post list
