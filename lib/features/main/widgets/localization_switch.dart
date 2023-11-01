import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';

class LocalizationSwitch extends HookWidget {
  const LocalizationSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final isKg = useState(false);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "KGZ",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 9),
        CupertinoSwitch(
          activeColor: AppColors.secondaryLight,
          trackColor: AppColors.secondaryLight,
          thumbColor: AppColors.secondaryDark,
          value: !isKg.value,
          onChanged: (value) {
            // isKg.value = value;
          },
        ),
        const SizedBox(width: 9),
        Text(
          "RU",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
