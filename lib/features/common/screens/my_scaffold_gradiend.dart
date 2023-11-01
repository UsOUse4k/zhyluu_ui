import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:zhyluu_ui/features/common/extensions/build_context_extension.dart';
import 'package:zhyluu_ui/features/common/widgets/my_drawer.dart';

class MyScaffoldGradient extends HookWidget {
  const MyScaffoldGradient({
    super.key,
    this.backgroundGradiend,
    this.backgroundHeight,
    required this.body,
    this.appBar,
    this.bottomBar,
  });

  final Gradient? backgroundGradiend;
  final double? backgroundHeight;
  final Widget body;
  final Widget? appBar;
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
            height: backgroundHeight ?? context.screenSize.height,
            decoration: BoxDecoration(gradient: backgroundGradiend),
          ),
          SafeArea(
            child: Stack(
              children: [
                body,
                if (appBar != null)
                  Positioned(
                    top: 0,
                    child: appBar!,
                  ),
                if (bottomBar != null)
                  Positioned(
                    bottom: 0,
                    child: bottomBar!,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
