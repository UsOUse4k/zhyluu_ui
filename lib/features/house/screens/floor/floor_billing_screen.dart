import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class FloorBillingScreen extends StatelessWidget {
  static const routeName = "/floor-billing";

  const FloorBillingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "ЗАСЫПНОЙ\nМЕТОД",
      imagePath: Assets.images.floor.image40.path,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              """Керамзит используют при монтаже пола для тепло- и звукоизоляции, для устройства черновых полов на любых основаниях: бетонных, деревянных и даже на грунте.
Керамзит как утеплитель пола может использоваться в разных вариантах: в составе песчано-цементной стяжки или в качестве сухой засыпки.
Единственный минус керамзита — его способность долго держать влагу. Этот недостаток легко нивелировать, соблюдая технологию устройства пола с керамзитом, тщательно проклеивая гидроизоляционный слой.
Подготовка основания под засыпку керамзитом начинается с очистки поверхности. Чистое основание оценивают на кривизну и перепады плоскости. Это делают для того, чтобы увидеть, какой слой керамзита нужен для утепления пола, выравнивания поверхности и расчета требуемого количества материала.
Оптимальная толщина слоя 80 - 100 мм, для определения нужного количества гранул делают отметку на стене на высоту 8 см в самой высокой точке комнаты, от которой затем с помощью уровня отмечают горизонтальную линию по периметру комнаты.
Среднее значение высоты засыпки получают, измеряя расстояние до горизонтальной линии в нескольких местах, которое затем делят на количество замеров. Так, если сделано три замера со значениями 10, 15, 8 см, то средняя высота засыпки будет (10+15+8):3=11 см.
Затем площадь комнаты (ширина x длину) умножают на высоту (среднее значение), полученная цифра обозначает, сколько нужно керамзита для утепления пола этого помещения. Необходимо приобрести керамзита на 10% больше, чтобы не было простоя в процессе из-за нехватки материала.
Для начала черновое бетонное основание покрывается гидроизоляционной пленкой или рулонным материалом.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(Assets.images.floor.image41.path),
                Image.asset(Assets.images.floor.image42.path),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Поверх которой насыпается 10-15-сантиметровый слой керамзита. Лучше всего насыпать и разравнивать данный утеплитель по предварительно установленным маячкам металлическим правилом",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(Assets.images.floor.image43.path),
                Image.asset(Assets.images.floor.image44.path),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              """Как только импровизированное основание подсохнет, на него укладывается сетка для армирования, и поверх нее заливается стяжка. Лучше всего использовать для этих целей цементно-песчаный раствор.
На застывшую стяжку настилается выбранное покрытие.""",
              style: AppTextStyles.regularTextStyle,
            ),
            Text(
              "ВАЖНО! Хождение по теплоизоляционным плитам запрещено.",
              style: AppTextStyles.redTextStyle,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.floor.image45.path),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
