import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/is_kg_cubit.dart';

class LocalizationSwitch extends StatelessWidget {
  const LocalizationSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final isKg = context.watch<IsKgCubit>().state;

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
          value: !isKg,
          onChanged: (value) {
            context.read<IsKgCubit>().change(!value);
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
