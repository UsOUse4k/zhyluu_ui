import 'package:flutter/material.dart';

class AppColors {
  static const primary = Colors.white;
  static const secondary = Color(0xFF50D88C);
  static const secondaryLight = Color(0xFF9EF1C0);
  static const secondaryDark = Color(0xFF34AB81);
  static const red = Color(0xFFFF5B42);
  static const yellow = Color(0xFFFFD644);

  static const backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF34AB81),
      Color(0xFF50D88C),
      Color(0xFF91E9B8),
    ],
  );
  static const backgroundLightGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF88DC92),
      Color(0xFF39C1B0),
    ],
  );
}
