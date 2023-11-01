import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/where_to_insulate/screens/where_to_insulate_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class WhereToInsulateFundamentScreen extends StatelessWidget {
  static const routeName = "/where-to-insulate-fundament";

  const WhereToInsulateFundamentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WhereToInsulateScreen(
      imagePath: Assets.images.whereToInsulate.fundament.path,
      title: "Теплопотери фундамента",
      child: RichText(
        text: TextSpan(
          style: AppTextStyles.regularTextStyle,
          children: [
            const TextSpan(
                text:
                    """Бетон – преобладающий материал в строительстве фундаментов. Его высокая теплопроводность и прямой контакт с грунтом дают до 20% теплопотерь по всему периметру здания. Фундамент особенно сильно проводит тепло из подвального помещения и неправильно смонтированного теплого пола на первом этаже.
Бетон – преобладающий материал в строительстве фундаментов. Его высокая теплопроводность и прямой контакт с грунтом дают до 20% теплопотерь по всему периметру здания. Фундамент особенно сильно проводит тепло из подвального помещения и неправильно смонтированного теплого пола на первом этаже.
Подробнее об утеплении фундамента, можно изучить в разделе """),
            TextSpan(
              text: "УТЕПЛЕНИЕ ФУНДАМЕНТА",
              style: AppTextStyles.invertedTextStyle,
            ),
            const TextSpan(text: "."),
          ],
        ),
      ),
    );
  }
}
