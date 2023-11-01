import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class InstalationPVCScreen extends StatelessWidget {
  static const routeName = "/instalation-pvc-screen";

  const InstalationPVCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "1 Установка пластиковых (ПВХ) стеклопакетов.",
      imagePath: Assets.images.appartment.instalationPvc.path,
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
              "Замена старых деревянных рам на современные пластиковые окна является актуальным вопросом, так как новые изделия позволят эффективно удержать тепло внутри помещения, обойдутся значительно дешевле новых деревянных аналогов, при этом ничем не уступят по качеству. Пластиковые окна обладают отличными теплоизоляционными свойствами: из-за своей структуры и материала оконные профили минимально проводят тепло, что помогает сохранять тепло в помещении зимой и охлаждать его летом. Таким образом, они способствуют снижению затрат на отопление и кондиционирование. При выборе пластиковых окон важно обратить внимание на качество профилей и установки. Рекомендуется обращаться к проверенным производителям и специалистам, чтобы получить надежные и качественные окна, которые будут служить долгие годы.",
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Процесс установки новых окон",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.secondaryDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Перед установкой нового металлопластикового окна, необходимо не только снять старое, но и подготовить к работе оконный проем.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Подготовка помещения - демонтаж окон – включает: ",
              style: AppTextStyles.italicTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Обеспечение свободного доступа к окну, убрать бытовую технику, мелкие предметы, отодвинуть габаритную мебель от окна и укрыть ее полиэтиленовой пленкой, накрыть пленкой пол.\nВсе работы должны выполняться очень аккуратно, чтобы избежать повреждения оконного проема.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Процесс демонтажа старого окна происходит следующим образом:",
              style: AppTextStyles.italicTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              " 1. Снятие оконных створок с петель. Если есть глухая створка, необходимо удалить стекло из нее.\n2. Распиливание импоста и рамы.\n3. Демонтаж старых рам.\n4. Удаление остатков утеплителя.\n5. Зачистка оконного проема от остатков штукатурки и цемента.\n6. Демонтаж внешнего отлива и подоконника.\n7. Уборка и вывоз мусора из помещения.\n8. Установка новых окон.",
              style: AppTextStyles.regularTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
