import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_gradient.dart';
import 'package:zhyluu_ui/features/common/widgets/enumerating_text.dart';
import 'package:zhyluu_ui/features/common/widgets/my_button.dart';
import 'package:zhyluu_ui/features/house/screens/roof/roof_attic_screen.dart';
import 'package:zhyluu_ui/features/house/screens/roof/roof_inside_screen.dart';
import 'package:zhyluu_ui/features/house/screens/roof/roof_outside_screen.dart';

class RoofScreen extends StatelessWidget {
  static const routeName = "/roof";

  const RoofScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveGradient(
      title: "УТЕПЛЕНИЕ КРЫШИ",
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "    Потери тепла через крышу в холодное время года составляют 30—35 % в одно-, двухэтажных домах и 5—10 % — в многоэтажных. Применение эффективных систем теплоизоляции позволяет сократить потребление энергоресурсов на отопление до 10 раз. Внутри помещений, в зависимости от их функционального или технологического назначения, должен обеспечиваться тепловлажностный режим эксплуатации.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            const EnumeratingText(
              title: "Теплоизоляция крыши обеспечивает:",
              texts: [
                "Защиту покрытия и помещения от воздействий переменных температур наружного воздуха.",
                "Выравнивание температурных колебаний основного массива покрытия, благодаря чему. исключается появление трещин, вследствие неравномерных температурных колебаний.",
                "Перемещение точки росы во внешний теплоизоляционный слой, что исключает отсыревание бетонного или железобетонного покрытия",
                "Формирование благоприятного микроклимата помещения за счет повышения температуры внутренней поверхности покрытия (потолка) и уменьшения перепада температур внутреннего воздуха и поверхности потолка, в том числе и чердачных помещений.",
              ],
            ),
            const SizedBox(height: 15),
            Text(
              "    Потери тепла через крышу в холодное время года составляют 30—35 % в одно-, двухэтажных домах и 5—10 % — в многоэтажных. Применение эффективных систем теплоизоляции позволяет сократить потребление энергоресурсов на отопление до 10 раз. Внутри помещений, в зависимости от их функционального или технологического назначения, должен обеспечиваться тепловлажностный режим эксплуатации.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Подготовительный этап для утепления крыши",
              style: AppTextStyles.invertedTextStyle,
            ),
            Text(
              """1. Обеспечьте должное проветривание помещения, в котором планируется работать, и убедитесь, что рабочая зона достаточно освещена. При необходимости установите дополнительные источники света.
2. Перед тем как приступить к работе тщательно осмотрите стропильную систему. Если в ней присутствуют узлы, где соединения элементов выполнены в наложение, проверьте, чтобы между ними не было зазоров. Часто эти зазоры становятся холодными мостиками. При необходимости аккуратно заполните такие зазоры, используя монтажную пену.
3. Внимательно проверьте деревянную конструкцию на наличие выступающих гвоздей и саморезов, чтобы избежать получения травмы при утеплении кровли своими руками.
4. Распакуйте несколько упаковок утеплителя. Современные утеплители сильно сжимаются при упаковке, поэтому им требуется некоторое время, чтобы принять свою геометрическую форму.
5. Не используйте утеплители с заметными дефектами плотности и геометрии. При работе избегайте повреждений структуры утеплителя и не ставьте на него тяжелые предметы.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Общие рекомендации",
              style: AppTextStyles.invertedTextStyle,
            ),
            Text(
              """- Для утепления крыш и перекрытий применяются материалы плотностью не более 250 кг/м3 и теплопроводностью не более 0,06 Вт/(м∙°С). Теплоизоляционные материалы в конструкциях утепления зданий должны соответствовать требованиям пожарной безопасности, иметь гигиенические сертификаты, не выделять токсичные вещества.
- Утепление крыши выполняется в том случае, если планируется мансарда с жилыми комнатами. Если не планируется, то теплоизоляцию необходимо выполнить лишь над верхним перекрытием дома (над потолком).
- При утеплении наклонных и вертикальных поверхностей мансард используют плитную теплоизоляцию — для избегания сползания рулонного утеплителя вдоль ската и, как следствие, закупоривания вентилируемого зазора. Монтаж плит из минеральной ваты осуществляют в распор.
- Монтаж утеплителя можно производить как до монтажа финишного покрытия – снаружи, так и после – изнутри, в зависимости от погодных условий и условий монтажа. Невысокие в коньке кровли удобнее монтировать изнутри, а высокие кровли и с большими углами наклона – снаружи, так как это не требует большого количества лесов и физически
- Легче уложить плиты сверху, чем поднимать их на верх. Осенью и зимой монтаж утеплителя удобнее производить изнутри. Шаг стропильных ног проектируется равным 600 мм, что равно толщине плит утеплителя всех известных производителей.
Ниже описан метод утепления крыши с помощью минеральных ват, но технология для применения других видов утеплителей аналогичен.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(RoofOutsideScreen.routeName);
                  },
                  text: "Утепление\nСНАРУЖИ".toUpperCase(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(RoofInsideScreen.routeName);
                  },
                  text: "Утепление \nИЗНУТРИ".toUpperCase(),
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
                    context.push(RoofAtticScreen.routeName);
                  },
                  child: SizedBox(
                    width: 180,
                    height: 50,
                    child: Center(
                      child: Text(
                        "Утепление\nЧЕРДАЧНОГО\nПОКРЫТИЯ".toUpperCase(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                          letterSpacing: 0.16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
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
