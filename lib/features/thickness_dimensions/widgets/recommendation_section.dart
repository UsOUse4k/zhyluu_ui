import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/screens/materials/clay_screen.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/screens/materials/mineral_screen.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/screens/materials/penopolisterol_screen.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/screens/materials/penopolisterol_xps_screen.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/screens/materials/penopoliuretan_pu_screen.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/screens/materials/slabs_screen.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/screens/materials/straw_screen.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/screens/materials/wool_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class RecommendationSection extends StatelessWidget {
  const RecommendationSection({
    super.key,
    this.includeClay = true,
    required this.cityOrVillage,
    required this.fileName,
  });

  final bool includeClay;
  final String cityOrVillage;
  final String fileName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 19),
            Text(
              "Рекомендация для вас:",
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.black,
                letterSpacing: 0.63,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 14),
            RecommendationCard(
              title: "Солома",
              imagePath: Assets.images.howToInsulate.straw.path,
              onTap: (data) {
                context.pushNamed(
                  StrawScreen.name,
                  pathParameters: {
                    "city": cityOrVillage,
                    "file": fileName,
                  },
                );
              },
            ),
            const SizedBox(height: 30),
            RecommendationCard(
              title: "Шерсть",
              imagePath: Assets.images.howToInsulate.wool.path,
              onTap: (data) {
                context.pushNamed(
                  WoolScreen.name,
                  pathParameters: {
                    "city": cityOrVillage,
                    "file": fileName,
                  },
                );
              },
            ),
            const SizedBox(height: 30),
            RecommendationCard(
              title: "Камыш",
              imagePath: Assets.images.howToInsulate.slab.path,
              onTap: (data) {
                context.pushNamed(
                  SlabsScreen.name,
                  pathParameters: {
                    "city": cityOrVillage,
                    "file": fileName,
                  },
                );
              },
            ),
            const SizedBox(height: 30),
            RecommendationCard(
              title: "Минеральная вата",
              imagePath: Assets.images.howToInsulate.mineral.path,
              onTap: (data) {
                context.pushNamed(
                  MineralScreen.name,
                  pathParameters: {
                    "city": cityOrVillage,
                    "file": fileName,
                  },
                );
              },
            ),
            const SizedBox(height: 30),
            RecommendationCard(
              title: "Пенополистирол (ППС)",
              imagePath: Assets.images.howToInsulate.penopolisterol.path,
              onTap: (data) {
                context.pushNamed(
                  PenopolisterolScreen.name,
                  pathParameters: {
                    "city": cityOrVillage,
                    "file": fileName,
                  },
                );
              },
            ),
            const SizedBox(height: 30),
            RecommendationCard(
              title: "Пенополиуретан (ППУ)",
              imagePath: Assets.images.howToInsulate.penopoliuretanPu.path,
              onTap: (data) {
                context.pushNamed(
                  PenopoliuretanPuScreen.name,
                  pathParameters: {
                    "city": cityOrVillage,
                    "file": fileName,
                  },
                );
              },
            ),
            const SizedBox(height: 30),
            RecommendationCard(
              title: "Экструдированный пенополистирол (XPS)",
              imagePath: Assets.images.howToInsulate.penopolisterolXps.path,
              onTap: (data) {
                context.pushNamed(
                  PenopolisterolXpsScreen.name,
                  pathParameters: {
                    "city": cityOrVillage,
                    "file": fileName,
                  },
                );
              },
            ),
            if (includeClay) ...[
              const SizedBox(height: 30),
              RecommendationCard(
                title: "Керамзит",
                imagePath: Assets.images.howToInsulate.clay.path,
                onTap: (data) {
                  context.pushNamed(
                    ClayScreen.name,
                    pathParameters: {
                      "city": cityOrVillage,
                      "file": fileName,
                    },
                  );
                },
              ),
            ],
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
    required this.title,
    required this.imagePath,
    this.onTap,
  });

  final String title;
  final String imagePath;
  final Function(String)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 5,
          color: const Color(0xFF50D88C),
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onTap?.call(title);
          },
          child: Row(
            children: [
              const SizedBox(width: 15),
              Image.asset(
                imagePath,
                width: 34,
                height: 34,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  title,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.black,
                    letterSpacing: 0.63,
                    fontWeight: FontWeight.w800,
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
