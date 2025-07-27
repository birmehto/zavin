import 'package:get/get.dart';
import 'package:zavin/features/settings/settings_controller.dart';

import '../controller/bottom_nav_controller.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavController>(() => BottomNavController());
    Get.lazyPut<SettingsController>(() => SettingsController());
  }
}
