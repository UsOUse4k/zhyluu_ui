import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class RoofAtticScreen extends StatelessWidget {
  static const routeName = "/roof-attic";

  const RoofAtticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "УТЕПЛЕНИЕ ЧЕРДАЧНОГО\nПОКРЫТИЯ",
      imagePath: Assets.images.roof.image30.path,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "     Утепление чердачного перекрытия дома позволяет сохранить больше тепла внутри комнаты, а не потратить его на отопление холодного чердака. Именно, поэтому стоит сделать утепление перекрытия холодного чердака с использованием теплоизоляционных материалов. Лучше всего делать это в период строительства здания, или непосредственно перед чистовой отделкой комнаты. Но и в процессе эксплуатации дома нет причин не утеплять потолочное перекрытие со стороны чердака.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Пароизоляция.\n",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          """Начинается с укладки пароизоляционной пленки. Пленка позволит вывести пар, который поднимается из теплого жилого помещения на холодный чердак. Чтобы уложить пленку правильно нужно внимательно ознакомиться с нанесенной на нее маркировкой. Обязательно нужно соблюсти перехлест 100 мм.
Если производится утепление по деревянным балкам, то пленка должна огибать все выступающие элементы. В противном случае, балки могут прогнить.
В местах стыка пленки и стен или других выступающих поверхностей, нужно поднять ее на высоту равную толщине утеплителя плюс 50 мм. и проклеить скотчем или завернуть на плиту утеплителя."""),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.roof.image31.path),
              ],
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Утепление.\n",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          """Выполняется укладка утеплителя (ваты, пенопласта и экструдированного пенополистирола). Это довольно простой процесс. Плиты или полосы легко нарезаются строительным ножом по нужным размерам.
Укладывая лист нужно следить за тем, чтобы не оставалось зазоров или минераловатный материал не был сильно сдавлен. И то, и другое приведет к снижению качества утепления. Типичные ошибки 
на фото."""),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.roof.image32.path),
              ],
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Утепление керамзитом.\n",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          """Плита осматривается на предмет наличия щелей и трещин. Их заделывают раствором или накрывают плотной бумагой. Выступающие элементы трудностей с засыпкой керамзита не создают.
Монтируют обрешетку из бруса. На нее в дальнейшем будет настелен черновой пол.
Сыпучий утеплитель высыпают на плиту и выравнивают с помощью обычных граблей. Толщина слоя 250-300 мм. Передвигаться по керамзиту можно без ограничений.
Совет: при засыпке керамзита лучше комбинировать гранулы разного размера (диаметра). Так можно избежать появления пустот.
В завершении монтируют черновой пол или заливают песчано-цементной стяжкой."""),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.roof.image33.path),
              ],
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Утепление керамзитом.\n",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(text: """Гидpoизoляция.
Утепление перекрытия чердака завершает гидроизоляцией и устройством чернового пола. Ввиду свойства минвaты впитывать влагу, поверх слоя минеральной ваты нужно устелить гидроизоляцию. Также это необходимо, если поверх утеплителя будет заливаться бетонная стяжка. Если чердак постоянно используется, поверх такого теплоизоляционного «пирога» можно сделать черновой пол. В его роли может выступать бетонная стяжка или плиты OCБ. Если же чердак практически не используется, то можно просто проложить доски поверх уже имеющихся балок. Тогда в случае необходимости подняться на чердак, передвижения по нему не будут создавать трудности."""),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.roof.image34.path),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
