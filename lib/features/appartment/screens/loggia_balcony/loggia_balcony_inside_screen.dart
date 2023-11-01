import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/features/appartment/screens/loggia_balcony/insulation_instalation_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/loggia_balcony/preparatory_work_screen.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class LoggiaBalconyInsideScreen extends StatelessWidget {
  static const routeName = "/loggia-balcony-inside";

  const LoggiaBalconyInsideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      imagePath: Assets.images.appartment.loggiaBalconyInside.path,
      title: "Утепление\nбалкона изнутри",
      bottomBar: MyBottonBar(
        iconPath: Assets.icons.appartment.appartment.path,
        text: "Квартира",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.56,
                ),
                children: [
                  TextSpan(
                    text: "Утепление балкона изнутри.\n",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.56,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const TextSpan(
                      text:
                          "Преимущества - относительная простота установки, особенно, если балкон уже застеклен. Недостаток - уменьшение площади помещения из-за утеплителя.\n\nДля утепления своими реками нужны некоторые базовые навыки в строительстве и умение правильно использовать подходящие материалы. Нужно соблюдать меры безопасности и тщательно выполнить каждый шаг процесса."),
                ],
              ),
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.56,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.push(PreparatoryWorkScreen.routeName);
                  },
                text: "1. Подготовительные работы",
              ),
            ),
            RichText(
              text: TextSpan(
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.56,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.push(InsulationInstalationWorkScreen.routeName);
                  },
                text: "2. Монтаж утеплителя",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
