import 'package:flutter/material.dart';

abstract class IAppColors {
  Color get primary;
  Color get secondary;
  Color get background;
  Color get textPrimary;
  Color get textSecondary;
  Color get accent;
  Color get errorColor;
}

class AppColorsLight implements IAppColors {
  @override
  Color get primary => const Color(0xFF1565C0);

  @override
  Color get secondary => const Color(0xFF42A5F5);

  @override
  Color get background => const Color(0xFFF5F5F5);

  @override
  Color get textPrimary => const Color(0xFF212121);

  @override
  Color get textSecondary => const Color(0xFF757575);

  @override
  Color get accent => const Color(0xFFFFA726);

  @override
  Color get errorColor => const Color.fromARGB(0, 252, 1, 1);
}

class AppColorsDark implements IAppColors {
  @override
  Color get primary => const Color(0xFF0D47A1);

  @override
  Color get secondary => const Color(0xFF1976D2);

  @override
  Color get background => const Color(0xFF121212);

  @override
  Color get textPrimary => const Color(0xFFFFFFFF);

  @override
  Color get textSecondary => const Color(0xFFBDBDBD);

  @override
  Color get accent => const Color(0xFFFF7043);

  @override
  Color get errorColor => const Color.fromARGB(0, 252, 1, 1);
}
