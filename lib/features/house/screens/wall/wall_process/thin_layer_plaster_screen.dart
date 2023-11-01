import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_image_background.dart';
import 'package:zhyluu_ui/features/common/widgets/enumerating_text.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/features/common/widgets/text_with_dot.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class ThinLayerPlasterScreen extends StatelessWidget {
  static const routeName = "/thin-layer-plaster";

  const ThinLayerPlasterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldImageBackground(
      title:
          "Фасадные системы наружного утепления зданий с отделочным слоем из тонкослойной штукатурки",
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
              """Системы с тонкослойной штукатуркой представляют собой многослойную конструкцию, состоящую из теплоизоляции, армированного штукатурного слоя и защитно-декоративного штукатурного слоя.
Такие системы наиболее эффективны из-за отсутствия внутри них жестких связей, которые могут являться мостиками холода.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "1 — несущая стена; 2 — клей для теплоизоляционных плит; 3 — упрочняющая грунтовка; 4 — минераловатный утеплитель; 5 — декоративная штукатурка; 6 — стеклотканевая сетка; 7 — тарельчатый фасадный анкер; 8 — базовый армирующий слой; 9 — кварцевая грунтовка; 10 — фасадная краска (по необходимости)",
              style: AppTextStyles.italicTextStyle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image311.path),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              "Основанием системы могут быть несущие, самонесущие стены из штучных материалов (кирпич, камни, ячеисто-бетонные и бетонные блоки плотностью не менее 800 кг/м3).",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            EnumeratingText(
              includeSpacing: true,
              title: "Укладка фасадной системы:",
              titleTextStyle: AppTextStyles.invertedTextStyle,
              texts: const [
                "По предварительно прогрунтованной поверхности ограждающей конструкции плиты приклеивают клеевой смесью к фасаду с площадью контакта не менее 40 % площади плиты, затем закрепляют тарельчатыми дюбелями. Схема крепления зависит от толщины армированного штукатурного слоя и изменяется поярусно в зависимости от высотности здания.",
                "Армированный базовый штукатурный слой получают путем нанесения на поверхность теплоизоляции штукатурного раствора с укладкой в нее армирующей сетки и последующим выравниванием поверхности.",
                "Защитно-декоративный штукатурный слой предохраняет конструкцию от климатических воздействий и определяет цветовое решение и фактуру фасада здания. Для устройства защитно-декоративного слоя используют минеральные штукатурные смеси (цементные, известковые или цементно-известковые), обладающие высокой паропроницаемостью. Могут применяться также полимерные штукатурные смеси, позволяющие применять их в сочетании с плитами из каменной ваты.",
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "Монтаж первого ряда утеплителя с применением цокольных планок",
              style: AppTextStyles.invertedTextStyle,
            ),
            const TextWithDot(
                text:
                    "Строго по линии разметки устанавливается опорный цокольный профиль. Крепление планок осуществляется анкерами или дюбелями."),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image312.path),
              ],
            ),
            const SizedBox(height: 30),
            const TextWithDot(
                text:
                    "В местах крепления цокольных планок неровности стены компенсируются пластмассовыми подкладками (с шагом крепления не более 300 мм). Соединение планок производят без нахлестов с помощью специальных прокладок."),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image313.path),
              ],
            ),
            const SizedBox(height: 30),
            const TextWithDot(
                text: "На углах здания используют угловые цокольные планки."),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image314.path),
              ],
            ),
            const SizedBox(height: 30),
            EnumeratingText(
              includeSpacing: true,
              title:
                  "Монтаж первого ряда утеплителя без применения цокольных планок",
              titleTextStyle: AppTextStyles.invertedTextStyle,
              texts: const [
                "Вместо цокольного профиля по нижней границе утепления можно использовать временную опору — брусок, вдоль которого на стену сплошной полосой наносится клеевая масса на высоту 150 мм.",
                "В местах крепления цокольных планок неровности стены компенсируются пластмассовыми подкладками (с шагом крепления не более 300 мм). Соединение планок производят без нахлестов с помощью специальных прокладок.",
                "После установки цокольных планок минераловатные плиты нарезаются полосами по 300 мм. На каждую полосусплошным слоем наносится специальный клеевой состав для минераловатных плит с помощью зубчатого шпателя, и утеплитель приклеивается к стене.",
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image315.path),
              ],
            ),
            const SizedBox(height: 30),
            const TextWithDot(
                text:
                    "В случае использования опорных брусков свободная часть сетки заворачивается и крепится на утеплитель при формировании базового штукатурного слоя. (После окончания монтажа плит временная опора удаляется.)"),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image316.path),
              ],
            ),
            const SizedBox(height: 30),
            const TextWithDot(
                text:
                    "Затем через полосу утеплителя просверливается отверстие в стене и устанавливается дюбель (количество дюбелей составляет 3 шт. на одну полосу, расстояние от края полосы до дюбеля 100 мм и между дюбелями — не более 400 мм). Через сутки дюбели добивают металлическими гвоздями."),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image317.path),
              ],
            ),
            const SizedBox(height: 30),
            const TextWithDot(
                text:
                    "Швы между полосами минераловатной плиты заделывают обрезками утеплителя."),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image318.path),
              ],
            ),
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text:
                        "Установка типового ряда утеплителя из минеральной ваты\n",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(text: "Для увеличения адгезии ("),
                  TextSpan(
                    text:
                        "способности покрытия к прочному сцеплению с поверхностью основания",
                    style: AppTextStyles.italicTextStyle,
                  ),
                  const TextSpan(
                      text:
                          ") проводится обязательная подготовка поверхности утеплителя."),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const TextWithDot(
                text:
                    "Перед нанесением основного слоя на минераловатную плиту наносится слой клеевого состава, который вдавливается и растирается ровным краем стальной терки по всей поверхности."),
            const SizedBox(height: 30),
            Text(
              "Нанесение клеевого состава осуществляется сплошным или точечным методом.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Сплошной метод ",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          "нанесения клеевых смесей применяется для приклеивания плит и ламелей, если основание имеет неровности до 3 мм. Основной слой клеевого состава наносится на всю поверхность предварительно подготовленной плиты (с отступом от края на 20—30 мм) стальной зубчатой теркой с размером зубцов 10—12 мм."),
                ],
              ),
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Точечный метод ",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          """нанесения клеевых смесей применяется для приклеивания плит, если основание имеет неровности свыше 3 мм. Полоса клея, наносимого по контуру плиты, должна иметь разрывы, чтобы исключить образование воздушных пробок, при этом при приклеивании клей должен сойтись для предотвращения циркуляции воздуха под утеплителем. Площадь адгезионного контакта должна составлять ≥ 40 %площади монтажной поверхности.
· Далее минераловатные плиты приклеивают к стене с перевязкой относительно нижнего ряда утеплителя. Приклеивание минераловатных плит должно начинаться от угла здания и от проемов и сходиться на сплошной стене (между проемами или углами)."""),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const TextWithDot(
                text:
                    "Затем через плиту утеплителя в стене просверливаются отверстия и устанавливаются дюбели(количество дюбелей составляет 4 шт. на 1 м2 или в соответствии с проектом в зависимости от этажности здания и вида основания)."),
            const SizedBox(height: 15),
            Text(
              "Через сутки в дюбели забивают металлические гвозди или болты. Швы между плитами утеплителя заделываются обрезками утеплителя.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image319.path),
              ],
            ),
            const SizedBox(height: 30),
            EnumeratingText(
              includeSpacing: true,
              title:
                  "Установка утеплителя из минеральной ваты вокруг оконных и дверных проемов",
              titleTextStyle: AppTextStyles.invertedTextStyle,
              texts: const [
                "Сначала нарезается угловая армирующая сетка полосами шириной 500 мм. Клеевой состав наносится на стену по периметру проема сплошной полосой шириной 150 мм.",
                "Затем в клеевой состав вдавливаются полосы угловой армирующей сетки (шириной 500 мм) с нахлестом 100 мм.",
                "На полосы минеральной ваты (шириной 200 мм) зубчатым шпателем наносится клеевой состав сплошным слоем. По периметру окна устанавливают полосы из минераловатной плиты.",
                "Далее утеплитель закрепляется дюбелями по той же технологии, что и утеплители типового ряда. Расстояние от края полосы до дюбеля не менее100 мм.",
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image3110.path),
              ],
            ),
            const SizedBox(height: 8),
            EnumeratingText(
              includeSpacing: true,
              title: "Завершение работ по монтажу теплоизоляции",
              titleTextStyle: AppTextStyles.invertedTextStyle,
              texts: const [
                """После монтажа теплоизоляционных плит надо тщательно проверить плоскость на наличие щелей. В случае обнаружения их необходимо заполнить полосами из теплоизоляционного материала, вырезанными в соответствии с размерами щелей.
· Необходимо также проверить плоскость утеплителя на наличие выпуклостей при помощи длинного уровня или рейки. Все неровности следует шлифовать специальной абразивной теркой.""",
              ],
            ),
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Усиление элементов фасада\n",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          """Внутренние напряжения, которые могут образоваться в результате расширения и усадки фасадных слоев, могут привести к появлению косых трещин на плоскости стены по направлению от краев проемов к наружной стороне. Поэтому необходимо усилить внешние вертикальные и горизонтальные углы здания, углы оконных и дверных проемов.
Для предотвращения появления таких трещин применяют алюминиевый уголок, который приклеивается на утеплитель по углам здания, оконным и дверным проемам, деформационным швам, и угловую армирующую сетку."""),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image3111.path),
              ],
            ),
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Устройство базового штукатурного слоя: ",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          "на плоскость плит утеплителя наносится клеевой состав, в который затем вдавливается армирующая щелочестойкая стеклосетка с нахлестом полотен 100 мм на вертикальных и горизонтальных стыках. Излишки клеевой массы снимают. На высохшую поверхность армирующего слоя шпателем или щеткой наносят клеевую массу для выравнивания, полностью укрывая армирующую сетку и создавая гладкую поверхность. После высыхания выравнивающего слоя неровности зачищают наждачной бумагой."),
                ],
              ),
            ),
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Устройство декоративного слоя: ",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          "оштукатуренную поверхность очищают от пыли, а затем с помощью валика, краскопульта или окрасочного пистолета на всю поверхность наносят сначала грунтовочный состав в один слой, а затем окрасочный состав за два раза с укрытием всей загрунтованной поверхности. В системе с утеплителем из минеральной ваты недопустимо применять акриловые декоративные штукатурки, так как они имеют низкую паропроницаемость. Их сфера применения ограничена системой с утеплителем из пенополистирола. Зазоры между системой утепления и конструкциями здания заполняются уплотнительным шнуром по всей длине шва и заделываются герметиком."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
