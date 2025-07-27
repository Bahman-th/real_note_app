import 'package:flutter/material.dart';

/// 🎨 Your color palette
class AppColors {
  static const Color mainColor = Color(0xFFFDFBF7);       // کرم ملایم
  static const Color seconderyColor = Color(0xFFC8A165);  // بژ کاغذی
  static const Color mainTextColor = Color(0xFF2E2E2E);   // متن
}

/// 🌟 Your light theme
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.mainColor,
  primaryColor: AppColors.seconderyColor,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.mainTextColor, fontSize: 16),
    bodyMedium: TextStyle(color: AppColors.mainTextColor, fontSize: 14),
  ),
  iconTheme: const IconThemeData(color: AppColors.mainTextColor),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.seconderyColor,
    foregroundColor: Colors.white,
  ),
);

/// 🌙 (Optional) Dark theme (you can add later if needed)
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xFFFDFBF7),
  primaryColor: AppColors.seconderyColor,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
    bodyMedium: TextStyle(color: Colors.white, fontSize: 14),
  ),
  iconTheme: const IconThemeData(color: Colors.white),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.seconderyColor,
    foregroundColor: Colors.black,
  ),
);