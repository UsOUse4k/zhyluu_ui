import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_image_background.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class ThickLayerPlasterScreen extends StatelessWidget {
  static const routeName = "/thick-layer-plaster";

  const ThickLayerPlasterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldImageBackground(
      title:
          "Фасадные системы наружного утепления зданий с отделочным слоем из толстослойной штукатурки (усиленная)",
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
              "В систему утепления с толстым штукатурным слоем входят слой теплоизоляции и армированный базовый штукатурный слой. Особенностью данной системы является раздельная работа стены основания, теплоизоляционного слоя и базового слоя, армированного стальной сеткой. Передача нагрузки через шарнирные плавающие анкеры позволяет компенсировать температурные и механические деформации штукатурных слоев системы и снизить их воздействие на основание.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image321.path),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "1 — несущая стена; 2 — утеплитель: минераловатные плиты или плиты из экструзионного пенополистирола; 3 — грунтующий слой; 4 — выравнивающий слой; 5 — декоративная штукатурка; 6 — стальная сетка; 7 — стальной анкерный крепеж; 8 — фасадная краска (по необходимости)",
              style: AppTextStyles.italicTextStyle,
            ),
            const SizedBox(height: 30),
            Text(
              "Разметка плоскости фасада: стену при помощи цветного шнура необходимо разделить на квадраты со стороной 500 мм, начиная от угла и учитывая, что первая линия проводится на расстоянии 150 мм от угла. В местах пересечения линий, где будут сверлиться отверстия крепежа, делаются отчетливые отметки.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image322.path),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "Вокруг оконных, дверных и других проемов места сверления отверстий под крепеж отмечаются отдельно специальным мелком. Отметки делаются на расстоянии 150 мм от краев проема. Сверление отверстий в отмеченных местах начинают с учетом глубины сверления для крепежных дюбелей.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image323.path),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "По отметкам устанавливаются скобы, которые крепятся к стене при помощи подходящих крепежных дюбелей. В скобу вставляется маятниковый рычаг, который фиксируется в верхнем положении под углом 90° для легкого монтажа теплоизоляции.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image324.path),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              """Установка крепежа: перед началом установки крепежных изделий выбранный в соответствии с типом стены дюбель забивают в отверстие.

Винт вворачивают в дюбель при помощи специального приспособления, поставляемого вместе с крепежными изделиями, которое вставляется вручную или в механическую дрель.

Вворачивая винт в дюбель, следует учитывать установленную величину заглубления винта.
Следует повернуть винт, чтобы петля оказалась в вертикальном положении, и установить крюк в петлю винта так, чтобы он принял блокировочное положение.
 
Количество крепежа - не менее 5 шт/м2, если толщина изоляции ≤ 100 мм, при этом расстояние между креплениями составляет не более 500 мм.

Количество креплений должно быть не менее 6 шт/м2. если толщина изоляции составляет> 100 мм, при этом расстояние между креплениями должно быть не более 400 мм. Это относится и к краевым зонам, и к верхним этажам высотных зданий, где возрастают воздействия ветровых динамических нагрузок.

Расстояние от крепежа до угла должно быть не более 150 мм, до оконного проема - не более 150 мм, до деформационного шва - не более 250 мм.

Схема установки крепежных изделий в плоскости стены""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image325.path),
              ],
            ),
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Установка опоры первого ряда утеплителя: ",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          "первый ряд плит из каменной ваты укладывается в желоб из сетки, установленный на линии цоколя. Основная задача стартового профиля из сетки — задать четкую геометрию фасадной системы."),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image326.path),
              ],
            ),
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Монтаж теплоизоляционных плит: ",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          "плиты из каменной ваты накалываются на установленные в верхнем положении маятниковые рычаги таким образом, чтобы крюки прошли через плиту насквозь. Монтаж плит производится снизу-вверх. Установка плит выполняется с зубчатой перевязкой на углах и смещением швов по горизонтали. Вокруг оконных и дверных проемов вырезаются целиковые элементы из плит. первый ряд плит из каменной ваты укладывается в желоб из сетки, установленный на линии цоколя. Основная задача стартового профиля из сетки — задать четкую геометрию фасадной системы."),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image327.path),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              """На углах здания можно укладывать только целые и половинные изоляционные плиты. Пригоночные детали ≥ 150 мм из одного и того же изоляционного материала можно использовать только на рядовой зоне и ни в коем случае не на краях. Промокшие или поврежден­ные плиты устанавливать нельзя.

Установленная теплоизоляционная плита закрепляется с помощью блокировочного элемента, удерживающего плиту на месте. В ней делается разрез под углом в 30–45°. Маятниковый рычаг перемещается в нижнее положение, что позволяет равномерно распределить нагрузку на крепеж.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image328.path),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "Перевязка плит на внутренних и наружных углах здания",
              style: AppTextStyles.invertedTextStyle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.wall.image329.path),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.images.wall.image3210.path,
                  width: 300,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "Монтаж армирующей сетки: ",
              style: AppTextStyles.invertedTextStyle,
            ),
            Text(
              """Перед началом установки сетки необходимо убедиться в том, что все крюки, являющиеся составной частью крепежного изделия, выведены из блокировочного положения и установлены под заданным углом не менее 30°.

Сетка натягивается полосами, равными ширине рулона. Рулон раскручивается сверху вниз. Нахлест сетки должен составлять не менее 50 мм.

Сетка слегка натягивается сверху вниз и фиксируется блокировочной шпилькой (или крепится путем установки на каждый крюк двух блокировочных пластинок поверх сетки). Блокировочные шпильки можно снимать и устанавливать заново, например, при монтаже сетки. Блокировочные пластинки нельзя сильно вдавливать, чтобы в изоляционной плите не образовались вмятины.

Сетку необходимо располагать в толщине первого слоя штукатурки. Для этого между сеткой и изоляцией устанавливаются пластиковые прокладки.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.images.wall.image3211.path,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "Устройство базового штукатурного слоям: ",
              style: AppTextStyles.invertedTextStyle,
            ),
            Text(
              """Предназначение первого слоя — служить каркасом конструкции, который усиливается штукатурной сеткой. Поэтому для первого слоя очень важно, чтобы сетка была сплошь покрыта раствором с обеих сторон. Расход раствора для первого слоя — 15–20 кг/м2 (сухая смесь приготавливается в соответствии с инструкцией производителя).

Штукатурный раствор можно наносить механически (растворонасосом) или вручную стальным шпателем, придавливая его к сетке и теплоизоляции. При необходимости сетку оттягивают от минераловатной плиты так, чтобы штукатурный раствор покрывал ее с обеих сторон полностью. Если сетка в некоторых местах вздувается и выпирает из раствора, ее вдавливают внутрь раствора, закрепляя специальными оцинкованными гвоздями.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            Text(
              "! Сетка должна быть полностью покрыта раствором. Чтобы сетка не выпирала, оштукатуривание лучше выполнять снизу-вверх",
              style: AppTextStyles.redTextStyle,
            ),
            const SizedBox(height: 30),
            Text(
              """При выравнивании первого слоя необходимо проверять его толщину по всей поверхности и там, где необходимо, добавлять раствор. После нанесения первого штукатурного слоя необходимо поддерживать поверхность влажной в течение времени схватывания (около 1–3 суток), в зависимости от температуры и влажности воздуха. При сухой и теплой погоде оштукатуренную поверхность рекомендуется увлажнять.
Первый слой следует наносить непрерывно, охватывая откосы оконных и дверных проемов, чтобы на углах не было рабочих швов. Углы стен также штукатурят непрерывным слоем, нанося раствор на 100–300 мм вокруг угла.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Устройство выравнивающего штукатурного слоя: ",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          "назначение второго штукатурного слоя — выровнять конструкцию стены и создать прямую и ровную основу для нанесения финишного защитно-декоративного слоя. Расход раствора для второго слоя — 15–20 кг/м2."),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Перед нанесением второго слоя раствора первый слой следует увлажнить за 1–2 ч до начала работ. Второй слой можно наносить вручную или механически, плотно прижимая к основе, с силой вдавливания стальным шпателем. Толщина армированного базового штукатурного слоя составляет от 20 до 60 мм. Плотность затвердевшего штукатурного слоя должна быть не менее 1000 кг/м и не более 1300 кг/м.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Шлифовка поверхности: ",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          "Раствору дают схватиться в течение 1–3 ч (в зависимости от погоды), после чего производят затирку выровненной поверхности теркой с полиуретановым покрытием. Затирку выполняют в соответствии с требованиями, предъявляемыми к финишной поверхности. Если финишный слой будет выполняться путем напыления цветного раствора, то затертая поверхность не должна быть слишком гладкой."),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}