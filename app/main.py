from fastapi import FastAPI
import jwt

app=FastAPI()

single_posts=[]
matched_posts=[]
users=[]
# TODO:likes,

@app.get("/test")
async def test():
    return {"text":"Hello world"}



async def Register():
    pass

async def Login():
    pass
