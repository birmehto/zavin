import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'settings_controller.dart';

class SettingsScreen extends GetView<SettingsController> {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'change_language'.tr,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 12),

          // ✅ Dropdown for language selection
          DropdownButton<Locale>(
            underline: Container(),
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            isDense: true,
            isExpanded: true,
            hint: Text('select_language'.tr),
            value: controller.currentLocale,
            items: const [
              DropdownMenuItem(
                value: Locale('en', 'US'),
                child: Text('🇺🇸 English'),
              ),
              DropdownMenuItem(
                value: Locale('hi', 'IN'),
                child: Text('🇮🇳 हिंदी'),
              ),
            ],
            onChanged: (Locale? newLocale) {
              if (newLocale != null) {
                controller.changeLanguage(newLocale);
              }
            },
          ),
        ],
      ),
    );
  }
}
