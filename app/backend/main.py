import os

from typing import Union
from fastapi import FastAPI
from fastapi.responses import FileResponse
from fastapi.staticfiles import StaticFiles
import logging

app = FastAPI()

logger = logging.getLogger("uvicorn")
logger.setLevel(logging.DEBUG)

# Ruta para servir el index.html en caso de que no se encuentre un archivo específico
@app.get("/pub/{full_path:path}")
async def serve_vue_app(full_path: str):
    # Definir extensiones de archivos estáticos (js, css, imágenes, etc.)
    static_extensions = ('.js', '.css', '.png', '.jpg', '.jpeg', '.gif', '.svg', '.ico', '.woff', '.woff2', '.ttf')
    
    # Verificar si la ruta solicitada es un recurso estático
    if full_path.endswith(static_extensions):
        file_path = os.path.join("../frontend/dist", full_path)
        if os.path.exists(file_path):
            return FileResponse(file_path)
        return {"error": "File not found"}

    # Si no es un recurso estático, devolver index.html
    index_path = os.path.join("../frontend/dist", "index.html")
    return FileResponse(index_path)

subapi = FastAPI()


@subapi.get("/greet")
def read_sub():
    return {"message": "Hello World from sub API"}


app.mount("/api", subapi)