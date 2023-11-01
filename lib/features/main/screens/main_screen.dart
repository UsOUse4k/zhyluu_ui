import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/features/common/widgets/bell_button.dart';
import 'package:zhyluu_ui/features/common/widgets/my_app_bar.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_color.dart';
import 'package:zhyluu_ui/features/main/widgets/category_carousel.dart';
import 'package:zhyluu_ui/features/main/widgets/localization_switch.dart';
import 'package:zhyluu_ui/features/main/widgets/my_main_card.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class MainScreen extends StatelessWidget {
  static const routeName = "/main";

  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldColor(
      backgroundColor: AppColors.secondary,
      appBar: const MyAppBar(
        bellButtonType: BellButtonType.light,
        leading: Padding(
          padding: EdgeInsets.only(top: 15),
          child: LocalizationSwitch(),
        ),
      ),
      bottomBar: MyBottonBar(
        iconPath: Assets.icons.main.main.path,
        text: "Главная",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 139),
            Image.asset(
              Assets.images.main.village.path,
              width: 183,
              height: 118,
            ),
            Container(
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
                  const SizedBox(height: 21),
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Text(
                      "Категории",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        letterSpacing: 0.63,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 21),
                  const CategoryCarousel(),
                  const SizedBox(height: 21),
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Text(
                      "Гидроизоляция",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        letterSpacing: 0.63,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 21),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyMainCard(
                        imagePath: Assets.images.waterproofing.path,
                        text: "Причин и способы решения",
                      ),
                    ],
                  ),
                  const SizedBox(height: 97),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
