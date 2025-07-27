import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  Locale currentLocale = Get.deviceLocale ?? const Locale('en', 'US');

  void changeLanguage(Locale locale) {
    currentLocale = locale;
    Get.updateLocale(locale);
    update();
  }
}
