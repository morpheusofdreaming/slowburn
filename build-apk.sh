#!/usr/bin/env bash
# Local build. Needs: Node 20+, JDK 21, Android SDK (ANDROID_HOME set, or Android Studio installed).
set -e
npm ci
npx cap sync android
cd android
chmod +x gradlew
./gradlew assembleDebug
echo
echo "APK: $(pwd)/app/build/outputs/apk/debug/app-debug.apk"
