import 'package:flutter/material.dart';

class AppColors {
  // 🌟 Brand Colors
  static const Color primary = Color(0xFF4F46E5); // Indigo
  static const Color secondary = Color(0xFF6366F1); // Soft indigo
  static const Color tertiary = Color(0xFF06B6D4); // Aqua/Teal

  // 🌈 Accents
  static const Color accentPink = Color(0xFFF43F5E);
  static const Color accentOrange = Color(0xFFFF6B35);
  static const Color accentGreen = Color(0xFF10B981);

  // 🌗 Backgrounds
  static const Color lightBackground = Color(0xFFF9FAFB);
  static const Color darkBackground = Color(0xFF0F172A);
  static const Color cardLight = Color(0xFFFFFFFF);
  static const Color cardDark = Color(0xFF1E293B);

  // ⚪ Neutral Shades
  static const Color neutral100 = Color(0xFFF1F5F9);
  static const Color neutral300 = Color(0xFFCBD5E1);
  static const Color neutral500 = Color(0xFF64748B);
  static const Color neutral700 = Color(0xFF334155);
  static const Color neutral900 = Color(0xFF0F172A);

  // ✅ States
  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFFACC15);
  static const Color error = Color(0xFFEF4444);

  // 📝 Text Colors
  static const Color textPrimaryLight = Color(0xFF111827);
  static const Color textSecondaryLight = Color(0xFF4B5563);
  static const Color textPrimaryDark = Color(0xFFF9FAFB);
  static const Color textSecondaryDark = Color(0xFFCBD5E1);

  // ✨ Gradients for hero sections or buttons
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF6366F1), Color(0xFF4F46E5)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [Color(0xFFF472B6), Color(0xFFEF4444)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
