import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class WallMaterialScreen extends StatelessWidget {
  static const routeName = "/wall-material";

  const WallMaterialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "ВЫБОР\nМАТЕРИАЛА",
      imagePath: Assets.images.wall.image10.path,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "При выборе материала",
              style: AppTextStyles.invertedTextStyle,
            ),
            Text(
              """необходимо обратить внимание на коэффициент теплопроводности, толщину, которая подбирается в зависимости от основного конструктивного материала и климатических особенностей места строительства. Также немаловажна стоимость материала и доступность на рынке.
Самые распространённые материалы у нас на рынке для теплоизоляции стен:
- минеральная вата
- пенопласт
- экструдированный пенополистирол.
Описанный ниже метод теплоизоляции на примере минеральной ваты подходит и для других плитных материалов, таких как пенопласт и экструдированный пенополистирол. Различие может быть лишь в выборе вида и длины дюбеля (держателя).""",
              style: AppTextStyles.regularTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
