import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/appartment/screens/door/insualtion_canvas_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/door/seal_perimeter_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/door/window_slopes_screen.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_gradient.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/features/common/widgets/my_button.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class DoorScreen extends StatelessWidget {
  static const routeName = "/door-screen";

  const DoorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveGradient(
      title: "УТЕПЛЕНИЕ ДВЕРЕЙ",
      bottomBar: MyBottonBar(
        iconPath: Assets.icons.appartment.appartment.path,
        text: "Квартира",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "    Главная цель дверей и окон - обеспечить защиту здания от холода, предотвращая его проникновение извне, и сохранять тепло внутри помещения. В отличие от окон, которые зачастую остаются закрытыми или являются глухими, входные двери мы часто открываем и закрываем. Из-за этого уплотнители на дверях становятся плоскими и теряют свою эффективность, не способны полностью выполнять свою функцию.\n\n    Входные двери в дом и квартиру конструктивно могут быть абсолютно одинаковыми, но в частных домах двери выходят непосредственно на улицу, а в городских квартирах есть буфер в виде относительно теплого подъезда. Поэтому утепление двери в домах должно быть на порядок мощнее.\n\n    Важно учитывать, что качество утеплителя внутри двери играет значительную роль в обеспечении теплоизоляции и комфортной температуры в помещении.\n\n    В случае перекошенного дверного полотна или деформации короба необходимо производить регулировку или даже замену петель. \nУ металлических дверных блоков, перекос дверного полотна обычно происходит из-за изношенности навесов. \nХотя можно применить самоклеющийся молдинг по периметру полотна, этого недостаточно для полного устранения проблемы",
              style: AppTextStyles.regularTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 37),
              child: Image.asset(Assets.images.door.doorSize.path),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(Assets.images.door.doorParts.path),
                Image.asset(Assets.images.door.doorText.path),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "    Перед тем, как приступить к утеплению, давайте рассмотрим, какой утеплитель мы будем использовать.\n\n    Теоретически вместо пенопласта можно использовать экструдированный пенополистирол (Пеноплекс), он гораздо плотнее и уровень теплоизоляции у него выше. Но цена, к примеру, в 2 раза выше, чем на пенопласт, а при такой толщине листа утепляющий эффект отличается незначительно.\n\n    Минеральная вата широко применяется в качестве утеплителя для дверей. Технология монтажа минеральной ваты схожа с установкой пенопласта, однако существует важный аспект - при выборе ватных плит для утепления дверей рекомендуется использовать только плотные варианты. Эти плиты обладают высокой плотностью и не меняют свой объем при воздействии конденсата, в отличие от мягких ватных матов, которые с течением времени могут осесть и потерять свои утеплительные свойства.\n\n   Сейчас на рынке можно найти недорогой комплект для утепления двери. Он представляет собой самоклеющийся поролоновый молдинг, который клеится по периметру короба или двери. Качество у него среднее, зато цена более чем доступная. Обычно такого уплотнения хватает на 1 сезон.\n\n   Фольгированный изолон - превосходный материал для утепления дверей. Он состоит из вспененного полиэтилена, имеющего толщину около 5 мм, с одной стороны которого нанесен слой фольги, а с другой - самоклеящаяся пленка. Такая прокладка идеально подходит для утепления всех типов дверей. Присутствие фольги в сочетании с пористым материалом создает эффект термоса, что обеспечивает отличные теплоизоляционные свойства данного материала.\n\n   Что касается сотового картона, изначально предназначенного для заполнения пустотелых коробов межкомнатных дверей, он практически неэффективен в качестве утеплителя для входных дверей. Бумага, которая используется в сотовом картоне, имеет невысокую прочность и быстро подвержена порче, что делает его не подходящим вариантом для утепления дверей.\n\nУтепление дверей можно разделить на 3 этапа:",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(WindowSlopesScreen.routeName);
                  },
                  text: "Утепление\nоткосов",
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(InsulationCanvasScreen.routeName);
                  },
                  text: "Утепление самого\nполотна изнутри",
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {
                    context.push(SealPerimeterScreen.routeName);
                  },
                  child: SizedBox(
                    width: 180,
                    height: 50,
                    child: Center(
                      child: Text(
                        "Установка\nуплотнителей по\nпериметру",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                          letterSpacing: 0.16,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
