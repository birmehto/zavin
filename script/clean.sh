#!/bin/bash
echo "🧹 Cleaning Flutter project..."
flutter clean
echo "🗑️ Removing build directories..."
rm -rf pubspec.lock
flutter pub upgrade
flutter pub get
echo "✅ Clean complete!"
