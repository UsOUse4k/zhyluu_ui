import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/features/common/widgets/my_app_bar.dart';
import 'package:zhyluu_ui/features/common/widgets/my_back_button.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/features/common/widgets/my_menu_button.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_color.dart';

class WhereToInsulateScreen extends StatelessWidget {
  const WhereToInsulateScreen({
    super.key,
    required this.imagePath,
    required this.title,
    required this.child,
  });

  final String imagePath;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MyScaffoldColor(
      backgroundColor: AppColors.primary,
      appBar: MyAppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 9),
          child: MyBackButton(
            onTap: () {
              context.pop();
            },
            type: MyBackButtonType.inverted,
          ),
        ),
        myMenuButtonType: MyMenuButtonType.inverted,
      ),
      bottomBar: const MyBottonBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            const SizedBox(height: 102),
            Container(
              height: 272,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(19)),
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 13),
            const Divider(
              thickness: 2,
              color: AppColors.secondaryDark,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 9,
                    height: 9,
                    decoration: const BoxDecoration(
                      color: AppColors.yellow,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 270,
                    child: Text(
                      title,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
              color: AppColors.secondaryDark,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 25,
                bottom: 69,
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
