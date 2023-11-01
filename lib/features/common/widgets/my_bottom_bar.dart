import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

enum MyBottomBarType {
  circle,
  hexagon,
}

class MyBottonBar extends StatelessWidget {
  const MyBottonBar({
    super.key,
    this.iconPath,
    this.text,
    this.type = MyBottomBarType.circle,
  });

  final String? iconPath;
  final String? text;
  final MyBottomBarType type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.primary,
              boxShadow: [
                BoxShadow(
                  blurRadius: 12,
                  offset: const Offset(0, -8),
                  color: const Color(0xFF28332D).withOpacity(0.1),
                ),
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
          if (iconPath != null)
            Positioned(
              bottom: 25,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    type == MyBottomBarType.circle
                        ? Assets.icons.circle.path
                        : Assets.icons.hexagon.path,
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(iconPath!),
                      if (text != null)
                        Text(
                          text!,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
