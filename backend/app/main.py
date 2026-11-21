
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI(
    title="Tech Club Management API",
    description="Backend API for the Tech Club Management App",
    version="1.0.0"
)

# Frontend development address
app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:5173"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.get("/")
def home():
    return {
        "success": True,
        "message": "Tech Club Management API is running"
    }


@app.get("/api/v1/health")
def health_check():
    return {
        "success": True,
        "status": "healthy",
        "application": "Tech Club Management"
    }
