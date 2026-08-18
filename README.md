
# ดูดคลิป - ตัวจริง yt-dlp engine

## สิ่งที่มีในเวอร์ชันนี้ (ตัวจริง)
- yt-dlp engine ตัวจริง com.github.yausername.youtubedl-android:library:0.16.0
- FFmpeg ตัวจริงสำหรับรวมวิดีโอ+เสียง
- ทำงานเบื้องหลังด้วย Foreground Service + Notification progress
- Share Intent: กดแชร์จาก YouTube/TikTok/FB/X/Telegram/IG มาเข้าแอปได้เลย
- รองรับทุกจอ 6" - 11" Responsive
- เลือกคุณภาพ 1080p/720p/480p/MP3

## วิธี Build APK
1. flutter pub get
2. flutter build apk --release
3. APK อยู่ที่ build/app/outputs/flutter-apk/app-release.apk

## โครงสร้าง
- lib/main.dart : UI หลัก
- lib/services/youtube_dl_service.dart : เรียก native yt-dlp ผ่าน MethodChannel
- android/app/src/main/kotlin/com/example/doodclip/MainActivity.kt : Native code ที่รัน yt-dlp จริง + Notification เบื้องหลัง
- android/app/build.gradle : ใส่ dependency yt-dlp + ffmpeg แล้ว

## วิธีใช้เบื้องหลัง
เปิด YouTube > กด Share > เลือก ดูดคลิป > แอปจะเริ่มโหลดเบื้องหลัง คุณกลับไปดู YouTube ต่อได้ แถบบนจะโชว์ % ตลอด
