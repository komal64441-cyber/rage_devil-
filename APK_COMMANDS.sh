#!/bin/bash
# RAGE DEVIL - APK BUILD COMMANDS
# Copy and paste these commands to build your Android APK

echo "🎮 RAGE DEVIL APK BUILD SCRIPT"
echo "================================"

# Step 1: Build web app
echo "Step 1: Building web app..."
npm run build

# Step 2: Initialize Capacitor (one-time only)
echo "Step 2: Initializing Capacitor..."
npx cap init --web-dir=dist

# Step 3: Add Android platform (one-time only)
echo "Step 3: Adding Android platform..."
npx cap add android

# Step 4: Sync files
echo "Step 4: Syncing files to Android..."
npx cap sync android

# Step 5: Build APK
echo "Step 5: Building APK (this may take 1-2 minutes)..."
cd android
./gradlew assembleDebug
cd ..

# Done!
echo ""
echo "✅ BUILD COMPLETE!"
echo ""
echo "Your APK is at:"
echo "  android/app/build/outputs/apk/debug/app-debug.apk"
echo ""
echo "To install on device:"
echo "  adb install android/app/build/outputs/apk/debug/app-debug.apk"
echo ""
echo "Or copy the APK file to your phone and tap to install!"
echo ""
