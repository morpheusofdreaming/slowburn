# SLOWBURN - Android app (Capacitor)

The game is in `www/` (index.html + bundled three.js, works offline).
The Android project is in `android/` (landscape, fullscreen, keeps screen on).

## Option A - no installs (GitHub builds it for you)
1. Create a new GitHub repository and upload everything in this folder
   (or `git init`, commit, push).
2. Open the repo > Actions > "Build APK" > it runs on every push
   (or press "Run workflow").
3. When it turns green, open the run and download the `slowburn-apk` artifact.
   Unzip it to get `app-debug.apk`.
4. Copy the APK to your phone and open it. Allow "Install unknown apps" if asked.

## Option B - Android Studio
1. `npm install`
2. `npx cap sync android`
3. Open the `android/` folder in Android Studio, then Build > Build APK(s).

## Option C - command line
Needs Node 20+, JDK 21 and the Android SDK:
    ./build-apk.sh
Output: android/app/build/outputs/apk/debug/app-debug.apk

## After you change the game
Edit `www/index.html`, then run `npx cap sync android` and rebuild.

## Notes
- This builds a debug-signed APK, which installs fine for personal use and testing.
- For Google Play you need a release-signed AAB (Build > Generate Signed Bundle in Android Studio).
- App id: com.slowburn.game (change in capacitor.config.json before you publish).
