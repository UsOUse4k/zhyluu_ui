import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_gradient.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/features/common/widgets/my_button.dart';
import 'package:zhyluu_ui/features/house/screens/floor/floor_billing_screen.dart';
import 'package:zhyluu_ui/features/house/screens/floor/floor_concrete_screen.dart';
import 'package:zhyluu_ui/features/house/screens/floor/floor_film_screen.dart';
import 'package:zhyluu_ui/features/house/screens/floor/floor_under_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class FloorScreen extends StatelessWidget {
  static const routeName = "/floor";

  const FloorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveGradient(
      title: "УТЕПЛЕНИЕ\nПОЛА",
      bottomBar: MyBottonBar(
        iconPath: Assets.icons.house.house.path,
        text: "ДОМ",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Утепление пола - это процесс добавления теплоизоляционных материалов под полы с целью уменьшить потерю тепла и повысить комфортность внутри помещения. Утепление пола особенно важно в холодных климатических условиях или на низком этаже здания, где полы находятся на земле или над холодным пространством.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Некоторые способы\nутепление пола:",
              style: AppTextStyles.invertedTextStyle,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(FloorUnderScreen.routeName);
                  },
                  text: "Утепление под\nлагами".toUpperCase(),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(FloorFilmScreen.routeName);
                  },
                  text: "Метод с параизоля-\nционной пленокой".toUpperCase(),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(FloorConcreteScreen.routeName);
                  },
                  text: "Утепление\nбетонных полов".toUpperCase(),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(FloorBillingScreen.routeName);
                  },
                  text: "Засыпной\nметод".toUpperCase(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
