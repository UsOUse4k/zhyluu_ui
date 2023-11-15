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

class MyScaffoldImageBackground extends HookWidget {
  const MyScaffoldImageBackground({
    super.key,
    required this.body,
    required this.title,
    this.bottomBar,
  });

  final Widget body;
  final String title;
  final Widget? bottomBar;

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
                Image.asset(Assets.images.background.path),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 207,
                    bottom: 105,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 281,
                        padding: const EdgeInsets.only(left: 27),
                        child: Text(
                          title,
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.7,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      body,
                    ],
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
                if (bottomBar != null)
                  Positioned(
                    bottom: 0,
                    child: bottomBar!,
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
