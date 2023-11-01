import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WhereToInsulateCard extends StatelessWidget {
  const WhereToInsulateCard({
    super.key,
    required this.onTap,
    required this.color,
    required this.iconPath,
    required this.text,
  });

  final VoidCallback onTap;
  final Color color;
  final String iconPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 168,
      width: 135,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onTap();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(iconPath),
              const SizedBox(height: 13),
              Text(
                text,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
