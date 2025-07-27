import 'package:get/get.dart';
import 'package:zavin/features/home/home_screen.dart';
import 'package:zavin/features/splash/splash_screen.dart';
import 'package:zavin/routes/app_routes.dart';

import '../features/navigation/binding/navigation_binding.dart';
import '../features/navigation/view/bottom_nav_screen.dart';
import '../features/settings/setting_screen.dart';
import '../features/settings/settings_binding.dart';
import '../features/splash/splash_binding.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final List<GetPage> routes = [
    GetPage(
      name: Routes.MAIN,
      page: () => BottomNavScreen(),
      binding: NavigationBinding(),  // ✅ Added binding
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      // binding: HomeBinding(), // later if needed
    ),
    GetPage(
      name: Routes.SETTINGS,
      page: () => const SettingsScreen(),
      binding: SettingsBinding(),
    ),
  ];
}
