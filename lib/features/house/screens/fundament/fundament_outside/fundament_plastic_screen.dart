import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_image_background.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class FundamentPlasticScreen extends StatelessWidget {
  static const routeName = "/fundament-plastic";

  const FundamentPlasticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldImageBackground(
      title:
          "1. Процесс утепления фундамента снаружи\nс утеплителем\nна основе пенопласта",
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Первое, что предстоит сделать, это откопать фундамент путем выкапывания траншеи по всему периметру здания, шириной примерно метр-полтора. Копать следует на полную глубину фундамента, которая, в свою очередь, зависит от глубины промерзания земли.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.fundament.image211.path),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              "Затем следует очистить поверхность фундамента с помощью жесткой щетки с металлическим ворсом. Кроме того, поверхность (фундамента и цоколя) необходимо выровнять – это необходимо для обеспечения долговечности гидроизоляционного материала. Выравнивают стены с использованием штукатурки, которая наносится на предварительно закрепленную сетку и маячные рейки. После окончания работ необходимо подождать, штукатурка должна полностью высохнуть.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Далее нужно нанести гидроизоляционный материал на внешние стены фундамента, а также на цоколь - они покрываются слоем битумной мастики, и поверх приклеивается рулонный или листовой гидроизоляционный материал (внахлест на 10 см.). Листы следует тщательно разгладить, удалив из-под них воздух, а стыки обработать битумом или битумной мастикой.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.fundament.image212.path),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              "Затем работа с утеплителем – нужно приклеить к поверхности листы теплоизоляции пеноплэкс на фундамент (или другой материал), используя для этого акриловый клей, или другой на неорганической основе. Клей наносится точечно, не менее чем в пяти-шести точках. Использовать для фундамента крепление дюбелями нельзя, это повредит гидроизоляцию.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.fundament.image213.path),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              "После прикрепления каждого листа нужно выждать, пока клей затвердеет – примерно минуту, впрочем, это время уйдет на подготовку очередного листа. Пеноплекс крепим по системе «паз-гребень», если используется пенопласт, то стыки и щели заполняются монтажной пеной (можно и клеем). С обратной стороны листа наносится произвольный рисунок из пены и прикладывается к стене. Но здесь листы нужно сразу фиксировать дюбелями зонтиками, иначе пена начнет расширяться и пеноплекс отойдет от стены;",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Дюбеля зонтики монтируются просто, в среднем на 1м² положено загонять не менее 5 точек фиксации. Перфоратором насквозь через лист пеноплекса просверливаете в бетоне глухое отверстие, вставляете в него шток зонтика и в конце забиваете молотком центральный\nраспорный штырь.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.fundament.image214.path),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              "Теперь нужно нанести второй слой утеплителя, который крепится на первый, крепят этот слой со смещением, чтобы стыки на первом слое были скрыты. После закрепления утеплителя нужно укрепить его поверхность с помощью штукатурки (особенно пенопласт), которая наносится на армирующую сетку\n(лучше из стеклоткани).",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "После высыхания раствора траншею засыпают речным песком. Выступающую часть фундамента облицовывают, выполняют отмостку.\nУтепление отмостки пеноплексом от монтажа этой конструкции на керамзит отличается только тем, что на песчано-гравийную подушку укладывается пеноплекс, а уже на него заливается армированная бетонная отмостка. Кстати наклон отмостки должен быть 2 – 3 см на 1 погонный метр.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.fundament.image215.path),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
