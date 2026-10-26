@echo off
echo ==========================================================
echo Starting AI Budget Guardian Platform
echo ==========================================================

start "AI Budget - Backend (Spring Boot 3 : 8080)" cmd /k "cd backend && mvn21.bat spring-boot:run"
start "AI Budget - AI Microservice (FastAPI : 8000)" cmd /k "cd ai-service && venv\Scripts\python.exe -m uvicorn app.main:app --host 0.0.0.0 --port 8000"
start "AI Budget - Frontend UI (React Vite : 5173)" cmd /k "cd frontend && npm run dev"

echo.
echo All 3 services launched in separate windows:
echo - Frontend App:     http://localhost:5173
echo - Backend API:      http://localhost:8080 (Swagger: /swagger-ui.html)
echo - AI Microservice:  http://localhost:8000 (Docs: /docs)
echo.
pause
