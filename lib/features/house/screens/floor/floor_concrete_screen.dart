import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class FloorConcreteScreen extends StatelessWidget {
  static const routeName = "/floor-concrete";

  const FloorConcreteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "УТЕПЛЕНИЕ\nБЕТОННЫХ ПОЛОВ",
      imagePath: Assets.images.floor.image30.path,
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
              """Этот метод используется для бетонных полов с цементно-песчаной стяжкой. Теплоизоляционные материалы укладываются прямо на поверхности земли или стяжки перед установкой напольного покрытия.
Первым делом очищают бетонную плиту от старой стяжки, мусора и пыли. На стыке стен и пола зазоры и щели замазываются цементным раствором или специальным герметиком. Затем устраивают гидроизоляцию: удобно воспользоваться уже готовыми гидроизоляционными полимерно-битумными растворами, которые наносят на поверхность бетона валиком или кистью. Другой вариант – применить для этих целей пароизоляционную пленку, которую раскладывают на пол внахлест, заводя на прилегающие стены. Если вы хотите сэкономить, то наиболее приемлемым материалом для гидро- и пароизоляции будет обычная полиэтиленовая пленка.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(Assets.images.floor.image31.path),
                Image.asset(Assets.images.floor.image32.path),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "После устанавливают лаги на расстоянии не более 0,9 м друг от друга, если сделать шаг больше, то полы будут прогибаться. Вместо лаг, если предполагается использовать для утепления сыпучий материал, к полу крепят металлические маяки.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.floor.image33.path),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              """Далее укладывают выбранный утеплитель. Подойдет как минеральная вата, так и пенопласт, и любой вариант сыпучих теплоизоляционных материалов. Утеплитель в виде листов или рулонов, раскладывается плотно, без щелей между лагами. Сыпучий материал (например, керамзит) засыпают между маяками и разравнивают под один уровень металлическим правилом.
После настилают пол. Для этого можно воспользоваться листами фанеры, ГВЛ, OSB, ДСП толщиной 10-15 мм. Надежнее укладывать их в два слоя так, чтобы швы нижних листов перекрывались полотнищами верхних листов. Таким образом покрытие пола будет бесшовным, что исключит возможность возникновения мостиков холода. После укладки слои листов соединяются между собой и лагами (маяками) при помощи саморезов.
В завершении устраивают любое финишное напольное покрытие.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.floor.image34.path),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
