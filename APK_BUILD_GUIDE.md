# 📱 RAGE DEVIL - BUILD APK FOR ANDROID

## ⚡ Quick Summary

Your Rage Devil game can be packaged as an APK file for Android devices using Capacitor.

---

## 🛠️ Prerequisites

Before building the APK, you need:

1. **Java Development Kit (JDK 11+)**
   - Download: https://www.oracle.com/java/technologies/downloads/
   - Or use OpenJDK: `brew install openjdk` (Mac) or `apt-get install openjdk-11-jdk` (Linux)

2. **Android SDK**
   - Download Android Studio: https://developer.android.com/studio
   - Install Android SDK tools
   - Set `ANDROID_HOME` environment variable

3. **Node.js** (Already have this ✅)

4. **Gradle** (Comes with Android Studio)

---

## 📋 Step-by-Step APK Build Instructions

### **Step 1: Build the Web App**
```bash
npm run build
```
This creates the `dist/` folder with your optimized game.

---

### **Step 2: Initialize Capacitor Android Project**
```bash
npx cap init
```
When prompted:
- App name: `Rage Devil`
- App ID: `com.ragedevil.game`
- Directory: `.` (current)

---

### **Step 3: Add Android Platform**
```bash
npx cap add android
```
This creates the `android/` folder with the native Android project.

---

### **Step 4: Sync Files**
```bash
npx cap sync android
```
Copies your web app into the Android project.

---

### **Step 5: Build APK (Two Options)**

#### **Option A: Build Unsigned APK (Recommended for Testing)**
```bash
cd android
./gradlew assembleDebug
cd ..
```

The APK will be at:
```
android/app/build/outputs/apk/debug/app-debug.apk
```

---

#### **Option B: Build Release APK (For Distribution)**

First, create a keystore (signing certificate):
```bash
keytool -genkey -v -keystore my-release-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias my-key-alias
```

When prompted, enter a password and key details.

Then build:
```bash
cd android
./gradlew assembleRelease \
  -Pandroid.injected.signing.store.file=../my-release-key.jks \
  -Pandroid.injected.signing.store.password=YOUR_PASSWORD \
  -Pandroid.injected.signing.key.alias=my-key-alias \
  -Pandroid.injected.signing.key.password=YOUR_PASSWORD
cd ..
```

The APK will be at:
```
android/app/build/outputs/apk/release/app-release.apk
```

---

## 📥 Install on Android Device

### **Via USB Cable**
```bash
adb install android/app/build/outputs/apk/debug/app-debug.apk
```

Or drag & drop the APK file to your device and tap to install.

### **Via File Transfer**
1. Copy the APK to your device
2. Open a file manager on your device
3. Tap the APK file
4. Click "Install"

---

## 🎮 Testing the APK

1. **Install on device or emulator**
2. **Tap the Rage Devil icon**
3. **Game should load instantly**
4. **Test all features**:
   - Keyboard controls (if device has one)
   - Touch controls ✅
   - All 34 levels
   - Death counter
   - Level select

---

## 📦 Distribute Your APK

### **Share with Friends**
1. Email the APK file
2. Upload to a cloud service (Google Drive, Dropbox, etc.)
3. Send via messaging app
4. Friends tap APK on device to install

### **Upload to Google Play Store**
1. Create Google Play Developer account ($25 one-time)
2. Prepare APK (follow steps above)
3. Upload Release APK to Play Store
4. Fill in app description, screenshots, etc.
5. **Your game is live on Google Play!**

See: https://developer.android.com/studio/publish

---

## 🐛 Troubleshooting

### **"ANDROID_HOME not found"**
```bash
# Set ANDROID_HOME (adjust path as needed)
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin
```

### **"Gradle build failed"**
```bash
# Clean and rebuild
cd android
./gradlew clean
./gradlew assembleDebug
cd ..
```

### **"adb: command not found"**
Add Android SDK tools to PATH:
```bash
export PATH=$PATH:$ANDROID_HOME/platform-tools
```

### **APK won't install**
- Check device has Android 6.0+ (Rage Devil requires API 21+)
- Try unsigned APK first
- Check device storage space

---

## 📊 APK File Info

- **Size**: ~3-4 MB (highly optimized!)
- **Minimum Android**: 6.0 (API 21)
- **Target Android**: 14+ (API 34)
- **Architecture**: ARM64
- **Supports**: All screen sizes & orientations

---

## 🎯 Full Command Sequence (Copy & Paste)

```bash
# Build web app
npm run build

# Initialize Capacitor (one-time)
npx cap init

# Add Android platform (one-time)
npx cap add android

# Sync files
npx cap sync android

# Build debug APK
cd android
./gradlew assembleDebug
cd ..

# Install on device
adb install android/app/build/outputs/apk/debug/app-debug.apk
```

Your APK is ready! 🚀

---

## 📝 Package Info

```
Package Name: com.ragedevil.game
App Name: Rage Devil
Version: 1.0
Supported: Android 6.0+
```

---

## 🎉 YOU'RE ALL SET!

Your Rage Devil game is now a native Android app!

**Next Steps**:
1. Build the APK following the guide above
2. Test on your device
3. Share with friends
4. Upload to Google Play (optional)

Enjoy troll platforming! 😈
