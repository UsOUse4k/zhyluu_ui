import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_image_background.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class FundamentPolyurethaneScreen extends StatelessWidget {
  static const routeName = "/fundament-polyurethane";

  const FundamentPolyurethaneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldImageBackground(
      title: "3. Процесс утепления фундамента пенополиуретаном",
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
              "Важно! Информация о пенополиуретане приводится исключительно в ознакомительных целях. Для приготовления этого материала и его последующего нанесения используется специальное оборудование. Стоит оно достаточно дорого, и покупка подобного агрегата ради единичного использования вряд ли является целесообразным решением. Гораздо выгоднее взять устройство в аренду, а еще лучше – обратиться к профессионалу, т.к. для правильного использования подобных напылителей нужно иметь соответствующие знания и навыки.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Утепление фундамента снаружи также возможно осуществить по технологии обработки стен основания дома нанесением на них пенополиуретана. Производить подобные работы возможно только при температуре от 10 градусов выше нуля, однако данный материал является не только теплоизоляционным, но и одновременно выполняет функции гидроизоляции.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.fundament.image231.path),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              """Вся работа проводится в четыре этапа:
1. Обработка поверхности фундамента (очистка от грязи, пыли и т.д.).
2. Нанесение пенополиуретана.
3. Оштукатуривание поверхности.
4. Засыпка траншеи и устройство отмостки.
Примечательность данной технологии состоит в экономии времени и отсутствии необходимости производить разного рода гидроизоляционные работы.""",
              style: AppTextStyles.regularTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
