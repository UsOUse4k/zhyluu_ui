import 'package:flutter/material.dart';
import 'package:zhyluu_ui/features/common/widgets/my_menu_button.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
    this.leading,
    this.myMenuButtonType = MyMenuButtonType.regular,
    this.isBellVisible = true,
  });

  final Widget? leading;
  final MyMenuButtonType myMenuButtonType;
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
            child: MyMenuButton(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              type: myMenuButtonType,
            ),
          ),
        ],
      ),
    );
  }
}
