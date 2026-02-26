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

  static TextTheme textTheme(ColorScheme colorScheme) {
    return TextTheme(
      displayLarge: _textStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: colorScheme.onSurface,
      ),
      displayMedium: _textStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: colorScheme.onSurface,
      ),
      displaySmall: _textStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: colorScheme.onSurface,
      ),
      headlineLarge: _textStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: colorScheme.onSurface,
      ),
      headlineMedium: _textStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: colorScheme.onSurface,
      ),
      headlineSmall: _textStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: colorScheme.onSurface,
      ),

      titleLarge: _textStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: colorScheme.onSurface,
      ),
      titleMedium: _textStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: colorScheme.onSurface,
      ),
      titleSmall: _textStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: colorScheme.onSurface,
      ),
      bodyLarge: _textStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: colorScheme.onSurface,
      ),
      bodyMedium: _textStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: colorScheme.onSurface,
      ),
      bodySmall: _textStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: colorScheme.onSurface,
      ),
      labelLarge: _textStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: colorScheme.onSurface,
      ),
      labelMedium: _textStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: colorScheme.onSurface,
      ),
      labelSmall: _textStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: colorScheme.onSurface,
      ),
    );
  }
}
