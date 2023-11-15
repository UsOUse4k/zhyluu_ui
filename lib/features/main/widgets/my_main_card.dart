import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMainCard extends StatelessWidget {
  const MyMainCard({
    super.key,
    this.onTap,
    required this.imagePath,
    required this.text,
  });

  final VoidCallback? onTap;
  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.85),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(22),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: () {
            onTap?.call();
          },
          child: SizedBox(
            width: 210,
            height: 210,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 210,
                    height: 52,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(22),
                        bottomRight: Radius.circular(22),
                      ),
                      color: const Color(0xFF384748).withOpacity(0.39),
                    ),
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
