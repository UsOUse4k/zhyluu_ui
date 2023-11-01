import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

enum BellButtonType {
  regular,
  light,
}

class BellButton extends StatelessWidget {
  const BellButton({
    super.key,
    this.onTap,
    this.type = BellButtonType.light,
  });

  final VoidCallback? onTap;
  final BellButtonType type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case BellButtonType.regular:
        return _RegularBellButton(onTap: onTap);
      case BellButtonType.light:
        return _LightBellButton(onTap: onTap);
    }
  }
}

class _RegularBellButton extends StatelessWidget {
  const _RegularBellButton({this.onTap});

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
        child: SvgPicture.asset(Assets.icons.main.appBar.regular.bell.path),
      ),
    );
  }
}

class _LightBellButton extends StatelessWidget {
  const _LightBellButton({this.onTap});

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
        child: SvgPicture.asset(Assets.icons.main.appBar.light.bell.path),
      ),
    );
  }
}
