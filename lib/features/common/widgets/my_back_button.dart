import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

enum MyBackButtonType {
  regular,
  inverted,
}

class MyBackButton extends StatelessWidget {
  const MyBackButton({
    super.key,
    this.type = MyBackButtonType.regular,
    this.onTap,
  });

  final MyBackButtonType type;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case MyBackButtonType.regular:
        return _RegularMyBackButton(onTap: onTap);
      case MyBackButtonType.inverted:
        return _InvertedMyBackButton(onTap: onTap);
    }
  }
}

class _RegularMyBackButton extends StatelessWidget {
  const _RegularMyBackButton({this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(360),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: () {
          onTap?.call();
        },
        child: SvgPicture.asset(Assets.icons.main.appBar.regular.back.path),
      ),
    );
  }
}

class _InvertedMyBackButton extends StatelessWidget {
  const _InvertedMyBackButton({this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(360),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: () {
          onTap?.call();
        },
        child: SvgPicture.asset(Assets.icons.main.appBar.inverted.back.path),
      ),
    );
  }
}
