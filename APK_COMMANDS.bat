@echo off
REM RAGE DEVIL - APK BUILD COMMANDS (Windows)
REM Copy and paste these commands to build your Android APK

echo.
echo ==================================
echo RAGE DEVIL APK BUILD SCRIPT (Windows)
echo ==================================
echo.

echo Step 1: Building web app...
call npm run build

echo.
echo Step 2: Initializing Capacitor...
call npx cap init --web-dir=dist

echo.
echo Step 3: Adding Android platform...
call npx cap add android

echo.
echo Step 4: Syncing files to Android...
call npx cap sync android

echo.
echo Step 5: Building APK (this may take 1-2 minutes)...
cd android
call .\gradlew.bat assembleDebug
cd ..

echo.
echo =====================================
echo BUILD COMPLETE!
echo =====================================
echo.
echo Your APK is at:
echo   android\app\build\outputs\apk\debug\app-debug.apk
echo.
echo To install on device:
echo   adb install android\app\build\outputs\apk\debug\app-debug.apk
echo.
echo Or copy the APK file to your phone and tap to install!
echo.
pause
