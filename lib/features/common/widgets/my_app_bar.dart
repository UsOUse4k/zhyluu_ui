import 'package:flutter/material.dart';
import 'package:zhyluu_ui/features/common/widgets/bell_button.dart';
import 'package:zhyluu_ui/features/common/widgets/my_menu_button.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
    this.leading,
    this.myMenuButtonType = MyMenuButtonType.regular,
    this.bellButtonType = BellButtonType.regular,
    this.isBellVisible = true,
  });

  final Widget? leading;
  final MyMenuButtonType myMenuButtonType;
  final BellButtonType bellButtonType;
  final bool isBellVisible;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 47,
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (leading != null) leading!,
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 9),
            child: Row(
              children: [
                if (isBellVisible) ...[
                  BellButton(
                    type: bellButtonType,
                    onTap: () {},
                  ),
                  const SizedBox(width: 25),
                ],
                MyMenuButton(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  type: myMenuButtonType,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
