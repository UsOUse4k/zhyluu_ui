import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_image_background.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/features/common/widgets/my_container_text.dart';
import 'package:zhyluu_ui/features/common/widgets/text_with_dot.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class InsulationInstalationWorkScreen extends StatelessWidget {
  static const routeName = "/insulation-instalation-screen";

  const InsulationInstalationWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldImageBackground(
      title: "Монтаж утеплителя",
      bottomBar: MyBottonBar(
        iconPath: Assets.icons.appartment.appartment.path,
        text: "Квартира",
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Image.asset(Assets.images.appartment.insulationWall.path),
          ),
          const SizedBox(height: 12),
          const MyContainerText(
            color: Colors.yellow,
            text: "Утепление стен",
          ),
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              children: [
                TextWithDot(
                    text:
                        "Для теплоизоляции стен балкона с отделкой декоративной штукатуркой рекомендуется применять специализированный материал экструзионный пенополистирол с фрезерованной поверхностью. Если вы используете гладкие плиты экструзионного пенополистирола, то они должны быть равномерно отфрезерованы с помощью ножовки или металлической щетки."),
                SizedBox(height: 15),
                TextWithDot(
                    text:
                        "Далее на подготовленную плиту необходимо нанести клей-пену и выждать 5–7 минут до начала полимеризации. Затем приложить плиту теплоизоляции к основанию с некоторым смещением от места установки и, прижав плиту к утепляемой стене с небольшим усилием, сдвинуть до места установки."),
                SizedBox(height: 15),
                TextWithDot(
                    text:
                        "После фиксации плит на клей-пену необходимо произвести дополнительное крепление плит теплоизоляции тарельчатыми дюбелями. Для этого сквозь плиту теплоизоляции просверливаются отверстия при помощи перфоратора. Расход дюбелей – 2–3 шт. на плиту. В отверстие необходимо вставить дюбель и забить сердечник молотком."),
                SizedBox(height: 15),
                TextWithDot(
                    text:
                        "В отверстие необходимо вставить дюбель и забить сердечник молотком."),
                SizedBox(height: 15),
                TextWithDot(
                    text:
                        "После укладки утеплителя необходимо все швы и щели заполнить монтажной пеной."),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Image.asset(Assets.images.appartment.insulationCeiling.path),
          ),
          const SizedBox(height: 12),
          const MyContainerText(
            color: Colors.red,
            text: "Утепление потолка",
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Text(
              "Теплоизоляция потолка с черновой отделкой листовыми материалами (ГКЛ, ГВЛ, СМЛ, ОСБ, фанера и др.)\nПри выборе отделки потолка листовыми материалами появляется возможность создавать рельеф поверхности сложной, объемной формы.\nШаг между кронштейнами, их количество и длина должны выбираться исходя из заранее подготовленного проекта с учетом нагрузок от листов и отделки на подсистему.\nДо монтажа листов гипсокартона необходимо проложить все электрические кабели для подключения осветительных приборов и розеток. Электрические кабели должны прокладываться в ПВХ/ПНД-трубах или кабель-каналах.",
              style: AppTextStyles.italicTextStyle,
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              children: [
                TextWithDot(
                    text:
                        "Установить кронштейны для металлических профилей. Профили устанавливаются с шагом 500–600 мм."),
                SizedBox(height: 15),
                TextWithDot(
                    text:
                        "С помощью клей-пены для пенополистирола зафиксировать плиты из экструзионного пенополистирола на подготовленное основание. В плитах необходимо предусмотреть прорези для кронштейнов."),
                SizedBox(height: 15),
                TextWithDot(
                    text:
                        "Зафиксировать слой пароизоляции с помощью двустороннего скотча поверх теплоизоляции. Нахлесты также проклеиваются двусторонним скотчем. Места проходки кронштейнов могут быть проклеены металлизированным скотчем."),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Image.asset(Assets.images.appartment.insulationBalcony.path),
          ),
          const SizedBox(height: 12),
          MyContainerText(
            color: const Color(0xFF39C1B0).withOpacity(0.85),
            text: "Утепление пола балкона",
          ),
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              children: [
                TextWithDot(
                    text:
                        "На подготовленное основание необходимо уложить теплоизоляционные плиты со смещением торцевых стыков в соседних рядах."),
                SizedBox(height: 15),
                TextWithDot(
                    text:
                        " Большие зазоры рекомендуется заполнить обрезками утеплителя или клей-пеной для пенополистирола. Механическая фиксация плит к полу не требуется. После укладки теплоизоляции необходимо проложить пароизоляционный слой. Пароизоляция укладывается свободно, с проклейкой швов двусторонней клейкой лентой. Нахлест соседних полотен должен составлять не менее 100 мм."),
                SizedBox(height: 15),
                TextWithDot(
                  text:
                      "Далее производится монтаж стяжки либо устройство системы напольного отопления.",
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          MyContainerText(
            color: const Color(0xFF50D88C).withOpacity(0.85),
            text: "Этап гидроизоляции",
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Text(
              "Гидроизоляция балкона – необходимое условие для защиты выступающей площадки от осадков. Отсутствие гидроизоляционного барьера ведет к порче элементов конструкции, появлению грибка и плесени, возможным проблемам с соседями. При гидроизоляции под теплоизоляционный материал необходимо предусмотреть при использовании материалов с высокой гигроскопичностью, например, минеральные ваты.",
              style: AppTextStyles.italicTextStyle,
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              children: [
                TextWithDot(
                    text:
                        "Когда герметизация и выравнивание поверхностей завершена, можно укладывать плёнку. Обычно это пенофол или полиэтилен. Если кладёте пенофол, следите, чтобы отражающая сторона клалась лицом вверх. Стыки фиксируются фольгированным скотчем."),
                SizedBox(height: 15),
                TextWithDot(
                    text:
                        "Гидроизоляционный слой крепится саморезами с широкой шляпкой, а места соединений пленки, проклеить фольгированным скотчем."),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child:
                Image.asset(Assets.images.appartment.insulationSheathing.path),
          ),
          const SizedBox(height: 12),
          MyContainerText(
            color: const Color(0xFF34AB81).withOpacity(0.85),
            text: "Монтаж обрешетки",
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              children: [
                TextWithDot(
                    text:
                        "Создаем обрешетку. Для этого используем брус или металлический профиль, преимущественно для монтажа гипсокартона или других видов отделочных листов. Крепим ламели по периметру потолка, а затем расставляем брус шагом 0,6 м."),
                SizedBox(height: 15),
                TextWithDot(
                    text:
                        "Обрешетка производится для дальнейшего крепления отделочных листов (ГКЛ, OSB, пластиковые панели и др.)."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
