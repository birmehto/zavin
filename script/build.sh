#!/bin/bash
OUTPUT_DIR=builds
APK_NAME=app-release-$(date +%Y%m%d-%H%M).apk

echo "📦 Building Flutter APK (release)..."
flutter build apk --release

mkdir -p $OUTPUT_DIR
cp build/app/outputs/flutter-apk/app-release.apk $OUTPUT_DIR/$APK_NAME
echo "✅ APK saved as $OUTPUT_DIR/$APK_NAME"
echo "🗑️ Cleaning up build files..."