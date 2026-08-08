# AdMob Integration for Rage Devil

## Your AdMob Configuration

- **App ID**: `ca-app-pub-4680298321698683~9266585690`
- **Banner Ad Unit ID**: `ca-app-pub-4680298321698683/2074082268`
- **Interstitial Ad Unit ID**: `ca-app-pub-4680298321698683/2074082268`

## Ad Strategy

### Banner Ads
- **Position**: Bottom of screen
- **Size**: Adaptive Banner (auto-adjusts to screen size)
- **When shown**: During gameplay only (hidden on menu)
- **Revenue**: Passive income while playing

### Interstitial Ads
- **Frequency**: Every 3 levels completed
- **When shown**: After level completion (before next level)
- **Pre-loading**: Automatically prepares next ad after showing one
- **Revenue**: Higher value per view

## Android Setup Required

After running `npx cap add android`, you need to update the AndroidManifest.xml:

### File: `android/app/src/main/AndroidManifest.xml`

Add the AdMob App ID in the `<application>` tag:

```xml
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <application
        android:allowBackup="true"
        android:icon="@mipmap/ic_launcher"
        android:label="@string/app_name"
        android:roundIcon="@mipmap/ic_launcher_round"
        android:supportsRtl="true"
        android:theme="@style/AppTheme">
        
        <!-- AdMob App ID -->
        <meta-data
            android:name="com.google.android.gms.ads.APPLICATION_ID"
            android:value="ca-app-pub-4680298321698683~9266585690"/>
        
        <activity
            android:configChanges="orientation|keyboardHidden|keyboard|screenSize|locale|smallestScreenSize|screenLayout|uiMode"
            android:name="com.ragedevil.game.MainActivity"
            android:label="@string/title_activity_main"
            android:theme="@style/AppTheme.NoActionBarLaunch"
            android:launchMode="singleTask"
            android:exported="true">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
        
        <provider
            android:name="androidx.core.content.FileProvider"
            android:authorities="${applicationId}.fileprovider"
            android:exported="false"
            android:grantUriPermissions="true">
            <meta-data
                android:name="android.support.FILE_PROVIDER_PATHS"
                android:resource="@xml/file_paths" />
        </provider>
    </application>

    <!-- Permissions -->
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
</manifest>
```

### File: `android/app/build.gradle`

Make sure dependencies are added (Capacitor should add them automatically):

```gradle
dependencies {
    implementation fileTree(include: ['*.jar'], dir: 'libs')
    implementation "androidx.appcompat:appcompat:$androidxAppCompatVersion"
    implementation "androidx.coordinatorlayout:coordinatorlayout:$androidxCoordinatorLayoutVersion"
    implementation "androidx.core:core-splashscreen:$coreSplashScreenVersion"
    implementation project(':capacitor-android')
    testImplementation "junit:junit:$junitVersion"
    androidTestImplementation "androidx.test.ext:junit:$androidxJunitVersion"
    androidTestImplementation "androidx.test.espresso:espresso-core:$androidxEspressoCoreVersion"
    implementation project(':capacitor-cordova-android-plugins')
    
    // AdMob dependencies (added by @capacitor-community/admob)
    implementation 'com.google.android.gms:play-services-ads:22.6.0'
}
```

## Build Steps

### 1. Initialize Android platform (if not done)
```bash
npx cap add android
```

### 2. Update AndroidManifest.xml
Add the `<meta-data>` tag with your AdMob App ID as shown above.

### 3. Sync and build
```bash
npx cap sync android
cd android
./gradlew assembleRelease
cd ..
```

### 4. Find your APK
```
android/app/build/outputs/apk/release/app-release.apk
```

## Testing Ads

### Test Mode
During development, use test ads to avoid policy violations:
- Change ad unit IDs in `src/services/AdsManager.ts` to Google's test IDs:
  - Banner: `ca-app-pub-3940256099942544/6300978111`
  - Interstitial: `ca-app-pub-3940256099942544/1033173712`

### Production Mode
Before publishing to Play Store, switch back to your real ad unit IDs:
- Banner: `ca-app-pub-4680298321698683/2074082268`
- Interstitial: `ca-app-pub-4680298321698683/2074082268`

## Expected Revenue

### Banner Ads
- Average eCPM: $0.50 - $2.00
- Revenue per 1000 views: ~$1.00

### Interstitial Ads
- Average eCPM: $5.00 - $15.00
- Revenue per 1000 views: ~$10.00

### Estimation (1000 active players)
- Banner: Each player plays ~30 min/day = ~30 banner views
- Interstitial: Each player completes ~5 levels/day = ~1.6 interstitial views
- Daily revenue: ~$30-50 banner + ~$16-32 interstitial = **$46-82/day**
- Monthly revenue: **$1,380 - $2,460**

## Monetization Tips

1. **Optimize Frequency**: Adjust interstitial frequency (currently every 3 levels) based on player feedback
2. **Rewarded Video**: Consider adding rewarded ads for extra lives or hints
3. **Remove Ads IAP**: Offer in-app purchase to remove ads ($2.99 - $4.99)
4. **Analytics**: Track ad performance in AdMob dashboard
5. **A/B Testing**: Test different ad positions and frequencies

## Compliance Requirements

### Google Play Store
- ✅ Display privacy policy link in app (required for apps with ads)
- ✅ Use test ads during development
- ✅ Don't show ads to children under 13 without parental consent
- ✅ Don't use misleading ad placements

### Privacy Policy
Create a privacy policy that mentions:
- Use of AdMob for advertising
- Data collection by Google (device ID, location, etc.)
- Link to Google's privacy policy
- How users can opt out

Add privacy policy link to:
- Play Store listing
- App settings menu
- Main menu

## Troubleshooting

### Ads not showing
- Check AdMob account is approved
- Verify App ID is correct in AndroidManifest.xml
- Ensure you're using production ad units (not test units)
- Wait 24-48 hours after creating ad units (they need time to activate)

### Build errors
- Make sure `@capacitor-community/admob` is installed
- Run `npx cap sync android` after any changes
- Clean build: `cd android && ./gradlew clean && cd ..`

### Low revenue
- Increase ad frequency (but not too much - players will quit)
- Add rewarded video ads
- Target specific countries with higher eCPM
- Optimize app for longer play sessions

## Next Steps

1. Build the app with AdMob
2. Test on physical device
3. Verify ads appear correctly
4. Add privacy policy
5. Submit to Play Store
6. Monitor revenue in AdMob dashboard
