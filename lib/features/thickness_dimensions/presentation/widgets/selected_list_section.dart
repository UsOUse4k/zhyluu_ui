import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class SelectedListSectionData {
  final String title;
  final String info;

  SelectedListSectionData({required this.title, required this.info});
}

class SelectedListSection extends StatelessWidget {
  const SelectedListSection({
    super.key,
    required this.cityOrVillage,
    required this.children,
    this.onTap,
  });

  final String cityOrVillage;
  final List<SelectedListSectionData> children;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final List<TextSpan> list = [];

    for (final child in children) {
      list.add(
        TextSpan(
          text: "${child.title}\n",
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: const Color(0xFF28332D),
            letterSpacing: 0.52,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
      list.add(
        TextSpan(
          text: "${child.info}\n",
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: const Color(0xFF28332D),
            letterSpacing: 0.52,
          ),
        ),
      );
    }

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 6,
              left: 26,
              bottom: 18,
            ),
            child: Text(
              "Ваш список:",
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.black,
                letterSpacing: 0.63,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 28),
              SvgPicture.asset(Assets.icons.check.path),
              const SizedBox(width: 18),
              Text(
                cityOrVillage,
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: const Color(0xFF28332D),
                  letterSpacing: 0.52,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 28),
              SvgPicture.asset(Assets.icons.check.path),
              const SizedBox(width: 18),
              RichText(
                text: TextSpan(
                  children: [
                    ...list,
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF5B42),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  onTap?.call();
                },
                child: SizedBox(
                  width: 301,
                  height: 32,
                  child: Center(
                    child: Text(
                      "Подвердить",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        letterSpacing: 0.35,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 93),
        ],
      ),
    );
  }
}
