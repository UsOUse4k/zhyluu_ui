import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/features/common/widgets/my_button.dart';
import 'package:zhyluu_ui/features/house/screens/fundament/fundament_outside/fundament_billing_screen.dart';
import 'package:zhyluu_ui/features/house/screens/fundament/fundament_outside/fundament_plastic_screen.dart';
import 'package:zhyluu_ui/features/house/screens/fundament/fundament_outside/fundament_polyurethane_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class FundamentOutsideScreen extends StatelessWidget {
  static const routeName = "/fundament-outside";

  const FundamentOutsideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "УТЕПЛЕНИЕ\nСНАРУЖИ",
      imagePath: Assets.images.fundament.image20.path,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Утепление стен фундамента дома, можно осуществить тремя основными способами:",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {
                    context.push(FundamentPlasticScreen.routeName);
                  },
                  child: SizedBox(
                    width: 180,
                    height: 50,
                    child: Center(
                      child: Text(
                        "УТЕПЛЕНИЕ\nМАТЕРИАЛАМИ НА\nОСНОВЕ ПЕГОПЛАСТА ",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                          letterSpacing: 0.16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(FundamentBillingScreen.routeName);
                  },
                  text: "ЗАСЫПНОЙ\nМЕТОД",
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {
                    context.push(FundamentPolyurethaneScreen.routeName);
                  },
                  child: SizedBox(
                    width: 180,
                    height: 50,
                    child: Center(
                      child: Text(
                        "УТЕПЛЕНИЕ\nФУНДАМЕНТА\nПЕНОПОЛИУРЕТАНОМ",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                          letterSpacing: 0.16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
