import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_gradient.dart';
import 'package:zhyluu_ui/features/common/widgets/my_button.dart';
import 'package:zhyluu_ui/features/house/screens/wall/wall_inside_screen.dart';
import 'package:zhyluu_ui/features/house/screens/wall/wall_material_screen.dart';
import 'package:zhyluu_ui/features/house/screens/wall/wall_preparation_screen.dart';
import 'package:zhyluu_ui/features/house/screens/wall/wall_process/wall_process_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class WallScreen extends StatelessWidget {
  static const routeName = "/wall";

  const WallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveGradient(
      title: "УТЕПЛЕНИЕ\nСТЕН",
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Теплоизоляция стен — это процесс улучшения теплозащитных свойств стен здания, позволит снизить потери тепла, тем самым повысит энергоэффективность здания. Это особенно важно для жилых зданий, чтобы обеспечить комфортные условия проживания, а также сократить затраты на отопление и кондиционирование воздуха.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image01.path),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "Потери тепла через стены составляют 35-40% от общих потерь. При укладке на стены они создают дополнительный слой изоляции, который препятствует прохождению тепла изнутри помещения наружу зимой и от наружного тепла внутрь летом.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image02.path),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              """Процесс теплоизоляции стен 
включает:
- выбор материала для теплоизоляции
- подготовку поверхности
- сам процесс утепления.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(WallMaterialScreen.routeName);
                  },
                  text: "ВЫБОР\nМАТЕРИАЛА",
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(WallPreparationScreen.routeName);
                  },
                  text: "ПОДГОТОВКА",
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(WallProcessScreen.routeName);
                  },
                  text: "ПРОЦЕСС",
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(WallInsideScreen.routeName);
                  },
                  text: "УТЕПЛЕНИЕ\nИЗНУТРИ",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
