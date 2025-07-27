import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/app_img.dart';
import 'splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// ✅ Logo with Glow Animation
            AnimatedBuilder(
              animation: controller.animationController,
              builder: (context, child) {
                return Container(
                  height: 160.w,
                  width: 160.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: theme.colorScheme.primary.withValues(
                          alpha: controller.glowOpacity.value,
                        ),
                        blurRadius: 40,
                        spreadRadius: 20,
                      ),
                    ],
                  ),
                  child: ScaleTransition(
                    scale: controller.logoScale,
                    child: Image.asset(
                      AppImg.logo,
                      height: 120.w,
                      width: 120.w,
                    ),
                  ),
                );
              },
            ),

            SizedBox(height: 30.h),

            /// ✅ Brand Name Fade + Slide
            SlideTransition(
              position: controller.textSlide,
              child: FadeTransition(
                opacity: controller.animationController,
                child: Text(
                  'ZAVIN',
                  style: GoogleFonts.poppins(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                    letterSpacing: 3,
                  ),
                ),
              ),
            ),

            SizedBox(height: 16.h),

            /// ✅ Optional: tagline under the logo for branding
            FadeTransition(
              opacity: controller.animationController,
              child: Text(
                'Your AI Learning Companion',
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
