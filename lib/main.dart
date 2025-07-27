import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zavin/core/localization/app_translations.dart';
import 'package:zavin/core/theme/app_theme.dart';
import 'package:zavin/routes/app_pages.dart';

void main() {
  runApp(const ZavinApp());
}

class ZavinApp extends StatelessWidget {
  const ZavinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'ZAVIN',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,  
          themeMode: ThemeMode.system,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          debugShowCheckedModeBanner: false,

          // 🌍 Localization
          translations: AppTranslations(),
          locale: Get.deviceLocale,
          fallbackLocale: const Locale('en', 'US'),
          home: child,
        );
      },
      child: const SizedBox(),
      
    );
  }
}
