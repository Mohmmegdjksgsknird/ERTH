# دليل إنشاء وتثبيت تطبيق ERTH على الهاتف (Android APK & PWA)

> **توضيح تقني صادق:** جهاز الحاسوب الحالي لا يحتوي على حزمة `Android SDK / JDK / Gradle` مثبتة محلياً، ولذلك تم تجهيز **مشروع Android أصلي متكامل وجاهز للتجميع الفوري** داخل هذا المجلد مع **3 طرق عملية وسريعة** للحصول على ملف `.apk` وتثبيته على أي هاتف أندرويد.

---

## الطريقة 1 (الأسرع والأسهل — بدون تثبيت Android Studio): بناء APK تلقائي عبر GitHub Actions (مجاناً)
1. أنشئ مستودعاً (Repository) على GitHub وارفع محتويات المجلد `android-apk-builder` إليه (مجلد `app/src/main/assets/www` مدمج مسبقاً بجميع ملفات التطبيق والصور الـ 61 للعمل 100% دون إنترنت!).
2. افتح تبويب **Actions** في GitHub واضغط **Run workflow** لملف `Build ERTH Android APK`.
3. خلال دقيقتين سيظهر ملف **`ERTH-Museum-Guide-APK`** جاهزاً للتنزيل المباشر بصيغة `.apk` وتثبيته على هاتفك!
4. يتميز هذا الـ APK باستخدام `WebViewAssetLoader` على نطاق آمن `https://appassets.androidplatform.net/` مما يمكّن **كاميرا الواقع المعزز (AR) وماسح QR والحساسات من العمل 100% دون إنترنت** داخل الهاتف.

---

## الطريقة 2 (الأسرع للتجربة الفورية على أندرويد وآيفون خلال 30 ثانية): PWA + PWABuilder APK
1. اسحب مجلد `erth-museum-app` وأفلته في [https://app.netlify.com/drop](https://app.netlify.com/drop) للحصول على رابط `HTTPS` مجاني فوري.
2. **للتثبيت المباشر على هاتفك (أندرويد أو آيفون):** افتح الرابط واضغط **«إضافة إلى الشاشة الرئيسية / Install App»** — سيظهر بأيقونة ERTH الرسمية ويعمل بملء الشاشة ودون إنترنت بالكامل.
3. **لتحويل الرابط إلى ملف `.apk` جاهز للتنزيل:** الصق رابط Netlify في [https://www.pwabuilder.com](https://www.pwabuilder.com) واضغط **Package For Stores → Android → Download** لتحصل على ملف `.apk` جاهز فوراً!

---

## الطريقة 3 (محلياً على أي جهاز عليه Android Studio)
1. افتح مجلد `android-apk-builder` داخل **Android Studio**.
2. في حال عدّلت أي ملف في التطبيق، شغّل أولاً `sync-web-assets.ps1` لتحديث النسخة المدمجة.
3. من القائمة العلوية اختر **Build → Build Bundle(s) / APK(s) → Build APK(s)**.
4. ستجد الملف النهائي في: `app/build/outputs/apk/debug/app-debug.apk`.
