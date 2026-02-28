import 'package:chat_app/core/theme/colors.dart';
import 'package:chat_app/core/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  AppTheme._();

  // ===== LIGHT COLOR SCHEME =====
  static const _lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: Colors.white,
    secondary: AppColors.primaryLight,
    onSecondary: Colors.white,
    error: AppColors.error,
    onError: Colors.white,
    surface: AppColors.lightSurface,
    onSurface: AppColors.lightTextPrimary,
    onSurfaceVariant: AppColors
        .lightTextSecondary, // For hint texts in input fields, tab labels, ...etc
    tertiaryFixed: AppColors.primary, // For active bottom nav bar item
    tertiaryFixedDim:
        AppColors.lightTextSecondary, // For inactive bottom nav bar item
  );

  // ===== DARK COLOR SCHEME =====
  static const _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primary,
    onPrimary: Colors.white,
    secondary: AppColors.primaryLight,
    onSecondary: Colors.white,
    error: AppColors.error,
    onError: Colors.white,
    surface: AppColors.darkSurface,
    onSurface: AppColors.darkTextPrimary,
    onSurfaceVariant: AppColors.darkTextSecondary,
    tertiaryFixed: Colors.white,
    tertiaryFixedDim: AppColors.darkTextSecondary,
  );

  // ================= LIGHT =================
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightBackground,
    colorScheme: _lightColorScheme,

    // ===== AppBar =====
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightBackground,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.lightTextPrimary, size: 24.sp),
      titleTextStyle: AppTypography.textTheme(
        AppColors.lightTextPrimary,
      ).bodyLarge,
    ),

    // ===== Text Theme =====
    textTheme: AppTypography.textTheme(AppColors.lightTextPrimary),

    // ===== Divider =====
    dividerColor: AppColors.lightBorder,

    // ===== Elevated Button =====
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        textStyle: AppTypography.textTheme(Colors.white).bodyLarge,
      ),
    ),

    // ===== Text Button =====
    textButtonTheme: TextButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        textStyle: AppTypography.textTheme(Colors.white).bodyLarge,
      ),
    ),

    // ===== Input Fields =====
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.lightSurface,
      hintStyle: AppTypography.textTheme(
        AppColors.lightTextSecondary,
      ).bodyMedium,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
      ),
    ),

    // ===== Card =====
    cardTheme: CardThemeData(
      color: AppColors.lightSurface,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
        side: const BorderSide(color: AppColors.lightBorder),
      ),
    ),

    // ===== Icon =====
    iconTheme: IconThemeData(size: 24.sp, color: Colors.black),

    // ==== TabBar ====
    tabBarTheme: TabBarThemeData(
      indicatorColor: AppColors.lightTextSecondary.withValues(alpha: 0.1),
      labelStyle: AppTypography.textTheme(
        AppColors.primary,
      ).bodyLarge?.copyWith(fontWeight: FontWeight.w600),
      unselectedLabelStyle: AppTypography.textTheme(
        AppColors.lightTextPrimary,
      ).bodyLarge,
      indicatorSize: TabBarIndicatorSize.label,
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
    ),
  );

  // ================= DARK =================
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBackground,
    colorScheme: _darkColorScheme,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkBackground,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.lightTextPrimary, size: 24.sp),
      titleTextStyle: AppTypography.textTheme(
        AppColors.darkTextPrimary,
      ).bodyLarge,
    ),

    textTheme: AppTypography.textTheme(AppColors.darkTextPrimary),

    dividerColor: AppColors.darkBorder,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        textStyle: AppTypography.textTheme(Colors.white).bodyLarge,
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        textStyle: AppTypography.textTheme(Colors.white).bodyLarge,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkSurface,
      hintStyle: AppTypography.textTheme(
        AppColors.darkTextSecondary,
      ).bodyMedium,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
      ),
    ),

    cardTheme: CardThemeData(
      color: AppColors.darkSurface,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: AppColors.darkBorder),
      ),
    ),

    iconTheme: IconThemeData(size: 24.sp, color: Colors.white),

    tabBarTheme: TabBarThemeData(
      indicatorColor: AppColors.darkTextSecondary.withValues(alpha: 0.50),
      labelStyle: AppTypography.textTheme(
        Colors.white,
      ).bodyLarge?.copyWith(fontWeight: FontWeight.w600),
      unselectedLabelStyle: AppTypography.textTheme(
        AppColors.lightTextSecondary,
      ).bodyLarge,
      indicatorSize: TabBarIndicatorSize.label,
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
    ),
  );
}
