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


@app.post('/user/register')
async def Register():
    pass

@app.post('/user/login')
async def Login():
    pass

@app.get('/user/follow')
async def follow():
    pass

@app.put('/user/update')
async def update():
    pass

@app.get('/user/retrieve')
async def retrieve():
    pass

@app.post('/single_post/post')
async def post():
    pass

@app.delete('/single_post/delete')
async def delete():
    pass




