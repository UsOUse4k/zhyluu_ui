import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class InstalationSealScreen extends StatelessWidget {
  static const routeName = "/instalation-seal-screen";

  const InstalationSealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "2 Установка уплотнителей.",
      imagePath: Assets.images.appartment.instalationSeal.path,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1. Плотное прилегание оконных створок к рамам является важным аспектом для предотвращения проникновения холодного воздуха. Уплотнители могут быть установлены вокруг оконной рамы или створки для улучшения герметичности.\nЭтапы установки уплотнителей для окон:",
              style: AppTextStyles.italicTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Подготовка поверхности:",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.secondaryDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "обеспечьте чистую и сухую поверхность оконной рамы и створки. Убедитесь, что поверхность не имеет грязи, пыли или следов старых уплотнителей.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Выбор уплотнителя:",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.secondaryDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "среди различных типов уплотнителей (ленты, резиновые профили, пены) выберите уплотнитель, который соответствует размеру и форме оконного профиля. Все окна имеют разную форму, глубину и расположение паза под уплотнитель. Универсальных уплотнителей, которые подходят для любых окон, не существует. Их выбирают в зависимости от марки окна, его типа (деревянное, пластиковое, алюминиевое) и толщины паза внутри.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Измерение длины:",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.secondaryDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "измерьте длину каждого участка окна, на котором вы планируете установить уплотнитель. Обрежьте уплотнитель подходящего размера с помощью острых ножниц или ножа.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Очистка поверхности:",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.secondaryDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "перед установкой уплотнителя, обработайте поверхность окна специальным растворителем или спиртом, чтобы убрать возможные остатки клея, жира или грязи. Это поможет обеспечить хорошую адгезию уплотнителя.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Приклеивание уплотнителя:",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.secondaryDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "аккуратно нанесите уплотнитель на оконную раму или створку вдоль всей длины. Убедитесь, что уплотнитель плотно прилегает к поверхности и равномерно распределен.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Обрезка и закрепление:",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.secondaryDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "если уплотнитель длиннее необходимой длины, аккуратно обрежьте его по размеру. Затем убедитесь, что уплотнитель прочно закреплен и не отходит от поверхности.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Проверка герметичности:",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.secondaryDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "после установки уплотнителей проверьте окно на герметичность, закрыв оконные створки. Убедитесь, что нет видимых зазоров между рамой и створкой и что окно плотно закрывается.",
              style: AppTextStyles.regularTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
