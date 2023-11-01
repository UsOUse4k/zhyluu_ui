import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/features/common/widgets/enumerating_text.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/features/common/widgets/my_button.dart';
import 'package:zhyluu_ui/features/house/screens/wall/wall_process/thick_layer_plaster_screen.dart';
import 'package:zhyluu_ui/features/house/screens/wall/wall_process/thin_layer_plaster_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class WallProcessScreen extends StatelessWidget {
  static const routeName = "/wall-process";

  const WallProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "ПРОЦЕСС",
      imagePath: Assets.images.wall.image30.path,
      bottomBar: MyBottonBar(
        iconPath: Assets.icons.house.house.path,
        text: "ДОМ",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EnumeratingText(
              title: "Процесс утепления стен",
              titleTextStyle: AppTextStyles.invertedTextStyle,
              includeSpacing: true,
              texts: const [
                "Выбор утеплителя: толщина теплоизоляционного слоя определяется на основании теплотехнических расчетов, исходя из требований, предъявляемых к сопротивлению теплопередаче ограждающих конструкций здания, с учетом климатических условий района строительства и требований противопожарных норм.",
                "Выбор клеевого состава: специальные фасадные клеевые смеси или универсальные штукатурно-клеевые составы, которые можно использовать как для приклейки плит теплоизоляции к основанию, так и для формирования базового штукатурного слоя поверх теплоизоляции. Клей-пена для пенополистирола предназначена для крепления плит из экструзионного пенополистирола и пенополистирола к основанию при устройстве теплоизоляции внешних и внутренних стен здания, крыш, подвалов, фундаментов, полов в новых и реконструируемых зданиях. При выборе смеси необходимо обращать внимание на область ее применения в зависимости от типа используемого утеплителя.",
                "Приготовление смеси клеевого состава: для приготовления качественной растворной смеси необходимо взять точно отмеренное количество чистой холодной воды (температура от 15 до 20°С). Необходимо подготовить или приобрести емкость с насечками в виде шкалы и указанием объема (не менее 10 л). Нужное количество воды перелить в ведро для приготовления смеси клеевого состава. В воду постепенно добавить сухую смесь и перемешать, добиваясь получения однородной массы без комков. После получения требуемой консистенции смесь оставить на 5 минут, затем еще раз перемешать. Перемешивание производят с помощью ручного электроинструмента (дрели) с насадкой для вязких растворных смесей при скорости вращения 400–800 об./мин, либо с помощью строительного миксера. Растворная смесь должна быть израсходована в течение 1,5 часов с момента приготовления. В процессе работы в смесь нельзя добавлять воду. Для поддержания пластичности можно еще раз перемешать смесь.",
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(ThinLayerPlasterScreen.routeName);
                  },
                  text: "ТОНКОСЛОЙНАЯ\nШТУКАРКА",
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(ThickLayerPlasterScreen.routeName);
                  },
                  text: "ТОЛСТОСЛОЙНАЯ\nШТУКАТУРКА",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
