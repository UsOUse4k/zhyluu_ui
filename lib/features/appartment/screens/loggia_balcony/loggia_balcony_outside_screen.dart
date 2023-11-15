import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/features/appartment/screens/loggia_balcony/insulation_instalation_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/loggia_balcony/preparatory_work_screen.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class LoggiaBalconyOutsideScreen extends StatelessWidget {
  static const routeName = "/loggia-balcony-outside";

  const LoggiaBalconyOutsideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      imagePath: Assets.images.appartment.loggiaBalconyOutside.path,
      title: "Утепление\nбалкона снаружи",
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
                    text: "Утепление балкона снаружи\n",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.56,
                    ),
                  ),
                  const TextSpan(
                      text:
                          "крайне сложно выполнить самостоятельно. Необходима помощь промышленных альпинистов, имеющих опыт работы с наружными стенами многоэтажных зданий. Кроме того, такой процесс может потребовать дополнительного разрешения местной администрации на изменение фасада, что может привести к дополнительным расходам. Преимущество внешнего утепления - слой утеплителя не забирает уже и так небольшую площадь балкона."),
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
