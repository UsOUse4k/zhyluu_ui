import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/features/common/widgets/enumerating_text.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/features/common/widgets/text_with_dot.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class WallInsideScreen extends StatelessWidget {
  static const routeName = "/wall-inside";

  const WallInsideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "УТЕПЛЕНИЕ\nИЗНУТРИ",
      imagePath: Assets.images.wall.image40.path,
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
              "Процесс утепления стен изнутри",
              style: AppTextStyles.invertedTextStyle,
            ),
            const SizedBox(height: 30),
            Text(
              """Утепление стен изнутри применяется, когда утепление снаружи не представляется возможным или нецелесообразным, например, в случае, когда здание уже построено и его внешний вид не должен изменяться. Внутреннее утепления можно выполнить в любое время года.

На первый взгляд выполнить внутреннее утепление намного проще и быстрее, чем наружное. Однако у такого подхода есть несколько недочетов:""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            const TextWithDot(
                text:
                    "Скопление сырости. Так как из-за утепления стена перестанет прогреваться, под слоем теплоизоляционного материала внутри возникнет охлажденная поверхность. Если туда начнет проникать воздух из помещения, который всегда содержит влагу, станет образовываться конденсат со всеми негативными последствиями – сыростью, плесенью, грибком."),
            const SizedBox(height: 30),
            const TextWithDot(
                text:
                    "Снижение тепловой емкости помещения. В обычном состоянии кирпичная стена накапливает и долго удерживает тепло, а при отделке теплоизоляционным слоем теряет данную способность. Поэтому нагреваться будет только воздух, и при открывании окна, двери или отключении отопления, комната быстро охладится."),
            const SizedBox(height: 30),
            const TextWithDot(
                text:
                    "Увеличение расходов. Чтобы провести качественную теплоизоляцию внутри нужно больше средств, чем снаружи, так как потребуются недешевые не пропускающие пара материалы, а также более надежная защита от проникновения влаги."),
            const SizedBox(height: 30),
            const TextWithDot(
                text:
                    "Уменьшение полезной площади. В среднем при толщине утепляющего слоя всего в 5-10 см съедается от 0,5 до 1,5 м² комнаты."),
            const SizedBox(height: 30),
            const TextWithDot(
                text: "Изменение или полная переделка интерьера."),
            const SizedBox(height: 30),
            Text(
              """Технологии утепления: сухие, мокрые, комбинированные.
Способы монтажа утепления стен изнутри:
1. Бескаркасный,
2. Каркасный.
При бескаркасном способе крепление утеплителя к базовой стене осуществляется с помощью клея. Варианты крепления листов (панелей) определяются неровностью основания. Высота облицовки определяется высотой утеплителя.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            Text(
              "Подготовка стены к оклейке утеплителем",
              style: AppTextStyles.invertedTextStyle,
            ),
            Text(
              """Для бескаркасного способа нужна ровная поверхность, без сильных выбоин.
Начнем работу по обшивке стен гипсокартоном с утеплителем с очистки от обоев, штукатурки, краски. Если надо оклеить неоштукатуренную стену из кирпича, то сбиваем весь выступающий кладочный раствор.
Выбоины и трещины заделываем цементно-песчаным раствором. Замешиваем его на месте или покупаем готовый в мешках""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            EnumeratingRichText(
              title: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Монтаж утеплителя\n",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          "Независимо от используемого материала процесс монтажа будет включать в себя несколько обязательных шагов."),
                ],
              ),
              includeSpacing: true,
              texts: [
                TextSpan(
                  text:
                      "Перед приклеиванием обрабатываем поверхность листа жесткой щеткой, что повысит коэффициент сцепления между стеной и утеплителем.",
                  style: AppTextStyles.regularTextStyle,
                ),
                TextSpan(
                  text:
                      "Клей наносим тонким слоем по всей площади при помощи рифленого шпателя.",
                  style: AppTextStyles.regularTextStyle,
                ),
                TextSpan(
                  text:
                      "Оклейку начинаем из нижнего угла. Сначала прикладываем лист, немного надавливаем, держим несколько секунд. Затем отпускаем.",
                  style: AppTextStyles.regularTextStyle,
                ),
                TextSpan(
                  text:
                      "Стычные швы обрабатываем силиконовым клеем. Если их ширина больше 5 мм, то заделываем монтажной пеной.",
                  style: AppTextStyles.regularTextStyle,
                ),
                TextSpan(
                  text:
                      "Дополнительно можно закрепить утеплитель пластиковыми дюбелями. Количество точек крепления – 3–4 на 1 м2.",
                  style: AppTextStyles.regularTextStyle,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "После того как вы закончили оклейку утеплителя, топоверхность готова к финишной отделке.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Каркасные ",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          "облицовки монтируют на заранее установленный каркас. Такой способ крепления облицовки применяется при значительных неровностях стен, а также в помещениях высотой более 3 м. Основу конструкций каркасных облицовок составляют металлические профили из оцинкованной стали или деревянные бруски и односторонние обшивки одним или несколькими слоями ГКЛ или ГВЛ."),
                ],
              ),
            ),
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Монтаж утеплителя\n",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          """По периметру стены обязательно обустраивается пароизоляционная пленка (только при использовании минеральной ваты).
Поверх пароизоляции монтируется каркас из деревянных брусков. Использовать металлопрофиль не рекомендуется. Металл отлично пропускает тепло и станет искусственным мостиком холода."""),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image41.path),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "!!! Металлический каркас должен применяться при обустройстве теплоизоляции изнутри объектов с повышенными требованиями к пожарной безопасности совместно с базальтовой ватой. К числу таких относятся строения из дерева: бани, сауны и прочее !!!",
              style: AppTextStyles.redTextStyle,
            ),
            const SizedBox(height: 30),
            const TextWithDot(
                text:
                    "Места стыка каркаса и пароизоляции проклеиваются скотчем, так как при креплении в пароизоляции образуется отверстие от дюбеля."),
            const TextWithDot(
                text:
                    "В каркас устанавливается вата и тщательно уплотняется во избежание образования любых щелей."),
            const TextWithDot(
                text:
                    "Сверху каркаса обустраивается второй слой пароизоляции. Таким образом создается двойной паробарьер между утеплителем стеной и помещением."),
            const TextWithDot(
                text:
                    "Места крепления и стыки пароизоляции проклеиваются алюминиевым скотчем."),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image42.path),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "Производится обшивка каркаса предпочтительными плитами – гипсокартона, ДСП, прочее.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image43.path),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
