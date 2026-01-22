from fastapi import FastAPI

app = FastAPI(title="Sample FastAPI App")

@app.get("/api/hello")
def hello():
    return {"message": "Hello World"}

