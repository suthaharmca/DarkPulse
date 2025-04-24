@echo off

echo Compiling buildApk.java...
javac buildApk.java

if %errorlevel% neq 0 (
    echo [ERROR] Compilation failed.
    pause
    exit /b
)

echo Running APK Builder...
java buildApk

echo Done.
pause
