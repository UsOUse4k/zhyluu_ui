import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';

class AppTextStyles {
  static final regularTextStyle = GoogleFonts.poppins(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.82,
  );

  static final invertedTextStyle = GoogleFonts.poppins(
    fontSize: 16,
    color: AppColors.secondaryDark,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.82,
  );

  static final redTextStyle = GoogleFonts.poppins(
    fontSize: 16,
    color: AppColors.red,
    fontWeight: FontWeight.w900,
    letterSpacing: 0.82,
  );

  static final italicTextStyle = GoogleFonts.poppins(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.italic,
    letterSpacing: 0.82,
  );
}
