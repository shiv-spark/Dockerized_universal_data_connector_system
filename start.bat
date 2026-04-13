@echo off
echo Starting Data Connector System...

if not exist .env (
    echo ERROR: .env file not found!
    echo Please copy .env.example to .env
    pause
    exit /b 1
)

if not exist dags mkdir dags
if not exist data mkdir data
if not exist Dataset mkdir Dataset
if not exist backups mkdir backups

docker compose up -d

echo.
echo System Started!
echo FastAPI Docs: http://localhost:8000/docs
echo Airflow UI:  http://localhost:8081
echo Login: admin / admin
echo.
echo Place your files in the Dataset/ folder 
pause