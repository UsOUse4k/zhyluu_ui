import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class FloorUnderScreen extends StatelessWidget {
  static const routeName = "/floor-under";

  const FloorUnderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "УТЕПЛЕНИЕ\nПОД ЛАГАМИ",
      imagePath: Assets.images.floor.image10.path,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  const TextSpan(
                      text:
                          "Этот метод подходит для деревянных полов. Теплоизоляционные материалы, такие как "),
                  TextSpan(
                    text: "пенополистирольные или минеральноватные плиты, ",
                    style: AppTextStyles.regularTextStyle
                        .copyWith(fontStyle: FontStyle.italic),
                  ),
                  const TextSpan(
                      text:
                          """укладываются между лагами, которые являются опорной структурой для пола. Затем укладывается напольное покрытие (например, паркет, ламинат или деревянные доски).
Существует два основных типа таких половых конструкций: однослойные и двухслойные, которые устанавливаются поверх чернового пола. Все разновидности деревянных полов требуют укладки на опорные лаги, что поднимает уровень пола значительно выше уровня залитой стяжки, чернового пола или утрамбованного грунта. Это особенно актуально для первых этажей домов при обработке фундамента или грунта.""")
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.floor.image11.path),
              ],
            )
          ],
        ),
      ),
    );
  }
}
