import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

enum MyMenuButtonType {
  regular,
  inverted,
}

class MyMenuButton extends StatelessWidget {
  const MyMenuButton({
    super.key,
    this.onTap,
    this.type = MyMenuButtonType.regular,
  });

  final VoidCallback? onTap;
  final MyMenuButtonType type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case MyMenuButtonType.regular:
        return _RegulaMyMenuButton(onTap: onTap);
      case MyMenuButtonType.inverted:
        return _InvertedMyMenuButton(onTap: onTap);
    }
  }
}

class _RegulaMyMenuButton extends StatelessWidget {
  const _RegulaMyMenuButton({this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
      height: 29,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          width: 3,
          color: AppColors.primary,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onTap?.call();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Меню",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 3),
              SvgPicture.asset(Assets.icons.main.appBar.regular.menu.path),
            ],
          ),
        ),
      ),
    );
  }
}

class _InvertedMyMenuButton extends StatelessWidget {
  const _InvertedMyMenuButton({this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
      height: 29,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          width: 3,
          color: AppColors.secondary,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onTap?.call();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Меню",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: AppColors.secondary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 3),
              SvgPicture.asset(Assets.icons.main.appBar.inverted.menu.path),
            ],
          ),
        ),
      ),
    );
  }
}
