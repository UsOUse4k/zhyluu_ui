import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/features/common/extensions/build_context_extension.dart';
import 'package:zhyluu_ui/features/common/widgets/my_app_bar.dart';
import 'package:zhyluu_ui/features/common/widgets/my_back_button.dart';
import 'package:zhyluu_ui/features/common/widgets/my_drawer.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class MyScaffoldCurveGradient extends HookWidget {
  const MyScaffoldCurveGradient({
    super.key,
    required this.body,
    required this.title,
  });

  final Widget body;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      endDrawer: const MyDrawer(),
      body: Stack(
        children: [
          Container(
            width: context.screenSize.width,
            height: context.screenSize.height,
            color: AppColors.primary,
          ),
          SingleChildScrollView(
            child: Stack(
              children: [
                Image.asset(Assets.images.curveGradient.path),
                Positioned(
                  top: 99,
                  left: 26.5,
                  child: SizedBox(
                    width: 354,
                    child: Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.77,
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 216,
                      bottom: 134,
                    ),
                    child: body,
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: MyAppBar(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 9),
                      child: MyBackButton(
                        onTap: () {
                          context.pop();
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
