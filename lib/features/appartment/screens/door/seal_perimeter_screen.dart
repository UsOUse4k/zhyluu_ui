import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class SealPerimeterScreen extends StatelessWidget {
  static const routeName = "/seal-perimeter-screen";

  const SealPerimeterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "Утепление откосов",
      bottomBar: MyBottonBar(
        iconPath: Assets.icons.appartment.appartment.path,
        text: "Квартира",
      ),
      imagePath: Assets.images.door.sealInstalationPerimeter.path,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Замена или установка\nуплотнителей",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Для этих целей используется уплотнитель – полимерный или поролоновый (реже) на клеящейся основе. Предпочтение лучше отдать полимерному, т.к. срок его эксплуатации дольше, а эффективность выше. Поролоновая клейкая лента не продержится и сезон, в лучшем случае, износится в течение года. Сам процесс утепления прост и предполагает наклейку уплотнителя по периметру дверного полотна. Главное, предварительно протереть и обезжирить поверхность, чтобы уплотнитель лучше приклеился.\n\n    Важным аспектом, от которого зависит эффективность утепления, является правильный подбор толщины уплотнителя. Тонкий уплотнитель не будет выполнять свою функцию в полном объеме, а толстый создаст дополнительную нагрузку на дверные петли в процессе закрывания дверей, и приведет к их ускоренному износу.\n\n    В решении этой проблемы поможет пластилин. Его нужно завернуть в целлофан и поместить между дверной коробкой и полотном. Затем дверь закрыть и открыть. Толщина полученного пластилинового валика будет соответствовать оптимальной толщине уплотнителя.",
              style: AppTextStyles.regularTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
