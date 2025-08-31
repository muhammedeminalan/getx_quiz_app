// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:quiz_app/core/theme/app_colors.dart';

class AppTheme {
  static final ThemeData light = _buildTheme(
    brightness: Brightness.light,
    colors: AppColorsLight(),
  );

  static final ThemeData dark = _buildTheme(
    brightness: Brightness.dark,
    colors: AppColorsDark(),
  );

  static ThemeData _buildTheme({
    required Brightness brightness,
    required IAppColors colors,
  }) {
    final baseColorScheme = ColorScheme(
      brightness: brightness,
      primary: colors.primary,
      onPrimary: Colors.white,
      secondary: colors.secondary,
      onSecondary: Colors.white,
      surface: colors.background,
      onSurface: colors.textPrimary,
      error: colors.textPrimary,
      onError: Colors.black,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: baseColorScheme,
      scaffoldBackgroundColor: colors.background,
      primaryColor: colors.primary,
      canvasColor: colors.background,
      iconTheme: IconThemeData(color: colors.primary),
      textTheme: _buildTextTheme(colors),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: colors.primary,
        foregroundColor: Colors.white,
        elevation: 4,
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.primary,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: colors.primary),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colors.primary,
          side: BorderSide(color: colors.primary),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colors.accent,
        foregroundColor: Colors.white,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor:
            brightness == Brightness.light ? Colors.white : Colors.grey[900],
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colors.primary, width: 2),
        ),
        labelStyle: TextStyle(color: colors.primary),
      ),
      dividerTheme: DividerThemeData(
        color: colors.textSecondary,
        thickness: 1,
        space: 32,
      ),
      cardTheme: CardTheme(
        color: brightness == Brightness.light ? Colors.white : Colors.grey[850],
        elevation: 2,
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: colors.primary,
        contentTextStyle: const TextStyle(color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        behavior: SnackBarBehavior.floating,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: colors.primary,
        unselectedLabelColor: colors.textSecondary,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: colors.primary, width: 2),
        ),
        labelStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor:
            brightness == Brightness.light ? Colors.white : Colors.black,
        selectedItemColor: colors.primary,
        unselectedItemColor: colors.textSecondary,
        showUnselectedLabels: true,
        elevation: 8,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.all(colors.primary),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.all(colors.primary),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(colors.primary),
        trackColor: WidgetStateProperty.all(colors.primary.withOpacity(0.5)),
      ),
    );
  }

  static TextTheme _buildTextTheme(IAppColors colors) {
    return TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: colors.textPrimary,
      ),
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: colors.textPrimary,
      ),
      displaySmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: colors.textPrimary,
      ),
      headlineLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: colors.textPrimary,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: colors.textPrimary,
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: colors.textPrimary,
      ),
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: colors.textPrimary,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: colors.textPrimary,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: colors.textPrimary,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: colors.textPrimary,
      ),
      bodyMedium: TextStyle(fontSize: 16, color: colors.textSecondary),
      bodySmall: TextStyle(fontSize: 12, color: colors.textSecondary),
      labelLarge: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: colors.textPrimary,
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: colors.textSecondary,
      ),
    );
  }
}
