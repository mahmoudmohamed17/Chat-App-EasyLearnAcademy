import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Application Typography
class AppTypography {
  // Private constructor to prevent instantiation
  AppTypography._();

  // Helper method to create text styles
  static TextStyle _textStyle({
    required double fontSize,
    required FontWeight fontWeight,
    required Color? color,
  }) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextTheme textTheme(Color color) {
    return TextTheme(
      displayLarge: _textStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: color,
      ),
      displayMedium: _textStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: color,
      ),
      displaySmall: _textStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: color,
      ),
      headlineLarge: _textStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: color,
      ),
      headlineMedium: _textStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: color,
      ),
      headlineSmall: _textStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: color,
      ),

      titleLarge: _textStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: color,
      ),
      titleMedium: _textStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: color,
      ),
      titleSmall: _textStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: color,
      ),
      bodyLarge: _textStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: color,
      ),
      bodyMedium: _textStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: color,
      ),
      bodySmall: _textStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: color,
      ),
      labelLarge: _textStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: color,
      ),
      labelMedium: _textStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: color,
      ),
      labelSmall: _textStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: color,
      ),
    );
  }
}
