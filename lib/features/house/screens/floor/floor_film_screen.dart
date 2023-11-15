import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class FloorFilmScreen extends StatelessWidget {
  static const routeName = "/floor-film";

  const FloorFilmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "МЕТОД\nПАРАИЗОЛЯЦИОННОЙ\nПЛЕНКОЙ",
      imagePath: Assets.images.floor.image20.path,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              """Если нет чернового пола, можно использовать пароизоляционную пленку, которую расстилают на обрешетку из деревянных брусьев. Затем укладывается слой утеплителя, выбирая материал с минимальным весом, такие как плиты или рулонные материалы. После этого поверх укладывается еще один слой пароизоляции и закрывается дощатым настилом.
Пароизоляционный слой необходимо прокладывать на хлест минимум на 10 см, далее необходимо закрепить строительным степлером. Далее по деревянным лагам кладем листы фанеры или листы ОСБ. Далее укладывается чистовое покрытие пола, например, ламинат по подложке. Монтаж завершается установкой плинтусов.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.floor.image21.path),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
