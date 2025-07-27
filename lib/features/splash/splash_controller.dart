import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> logoScale;
  late Animation<double> glowOpacity;
  late Animation<Offset> textSlide;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    logoScale = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.elasticOut),
    );

    glowOpacity = Tween<double>(begin: 0.0, end: 0.5).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    textSlide = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: animationController, curve: Curves.easeOut),
        );

    animationController.forward();

    // Navigate after splash
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(Routes.MAIN);
    });
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
