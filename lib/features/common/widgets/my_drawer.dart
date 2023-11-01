import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/features/about/screens/about_screen.dart';
import 'package:zhyluu_ui/features/main/screens/main_screen.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/thickness_dimensions_screen.dart';
import 'package:zhyluu_ui/features/where_to_insulate/screens/where_to_insulate_container_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 0.75,
      height: screenSize.height,
      color: AppColors.primary,
      child: Column(
        children: [
          const SizedBox(height: 105),
          Container(
            width: 216,
            height: 46,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              color: AppColors.red,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  context.push(MainScreen.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(Assets.icons.main.main.path),
                    const SizedBox(width: 10),
                    Text(
                      "Главная",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          _MyDrawerButton(
            onTap: () {
              context.push(AboutScreen.routeName);
            },
            iconPath: Assets.icons.main.drawer.aboutProject.path,
            text: "О проекте",
          ),
          const SizedBox(height: 28),
          _MyDrawerButton(
            onTap: () {
              context.push(ThicknessDimensionsScreen.routeName);
            },
            iconPath: Assets.icons.main.drawer.thicknessDimensions.path,
            text: "Размеры толщины теплоизоляции",
          ),
          const SizedBox(height: 28),
          _MyDrawerButton(
            onTap: () {
              context.push(WhereToInsulateContainerScreen.routeName);
            },
            iconPath: Assets.icons.main.drawer.question.path,
            text: "Где утеплять ?",
          ),
          const SizedBox(height: 28),
          SizedBox(
            width: 216,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: _launchURL,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(Assets.icons.feedback.path),
                        Image.asset(
                          Assets.images.telephone.path,
                          width: 12,
                          height: 12,
                        ),
                      ],
                    ),
                    const SizedBox(width: 30),
                    SizedBox(
                      width: 157,
                      child: Text(
                        "Обратная связь",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF636363),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _launchURL() async {
    final Uri url = Uri.parse(
        'https://docs.google.com/forms/d/e/1FAIpQLSeEeYjz8hbC_PJNzDXHA3Qjt6a4TTuLkG9XAtN2ZP7HtR2WPw/viewform?usp=sf_link');
    await launchUrl(url);
  }
}

class _MyDrawerButton extends StatelessWidget {
  const _MyDrawerButton({
    required this.onTap,
    required this.iconPath,
    required this.text,
  });

  final VoidCallback onTap;
  final String iconPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 216,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onTap();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(iconPath),
              const SizedBox(width: 30),
              SizedBox(
                width: 157,
                child: Text(
                  text,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF636363),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
