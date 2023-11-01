import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';

class MyHouseAppartmentCard extends StatelessWidget {
  const MyHouseAppartmentCard({
    super.key,
    required this.iconPath,
    required this.text,
    this.onTap,
  });

  final String iconPath;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 118,
          height: 107.38,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            color: const Color(0xFFF7F8FC),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 4,
              color: AppColors.secondary,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(3, 4),
                blurRadius: 5,
                color: const Color(0xFF232222).withOpacity(0.25),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                onTap?.call();
              },
              child: Center(
                child: SvgPicture.asset(iconPath),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 133.4,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: AppColors.secondaryDark,
              letterSpacing: 0.35,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
