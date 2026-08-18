@echo off
echo กำลังติดตั้งและสร้าง APK ดูดคลิป...
flutter pub get
flutter build apk --release
echo เสร็จแล้ว! ไฟล์อยู่ที่ build/app/outputs/flutter-apk/app-release.apk
pause
