import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/appartment/screens/window/film_application_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/window/instalation_seal_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/window/insulation_pvc_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/window/insulation_slopes_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/window/sealing_cracks_screen.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_gradient.dart';
import 'package:zhyluu_ui/features/common/widgets/enumerating_text.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class WindowScreen extends StatelessWidget {
  static const routeName = "/window-screen";

  const WindowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveGradient(
      title: "УТЕПЛЕНИЕ ОКОН",
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Все здания теряют тепло через окна, однако, ряд мероприятий по утеплению окон, снижает тепловые потери помещений. Утепление окон - это не только способ повысить комфорт в помещении, но и сэкономить на затратах на отопление.",
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 15),
            EnumeratingText(
              title: "Общие рекомендации",
              dotColor: AppColors.yellow,
              includeSpacing: true,
              titleTextStyle: GoogleFonts.poppins(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              texts: const [
                "Перед началом любой процедуры по утеплению окон, особенно если используются клейкие уплотнители, необходимо тщательно промыть, высушить и обезжирить поверхность оконной рамы. Это обеспечит лучшее сцепление клейкой стороны утеплителя с рамой окна.",
                "Чтобы утепление было эффективным и качественным нужно обратить внимание на чистоту стекол и рам окна, проверить целостность стекол, иначе усилия и затраты могут быть бесполезными.",
                "Уделите внимание местам, где рама окна примыкает к стене, так как здесь могут быть щели, через которые тепло уходит наружу. Обратите особое внимание на уплотнение в этих местах.",
                "Рекомендуется утеплять окна заранее, до наступления первых заморозков. Помните, что в минусовую погоду материалы могут вести себя иначе, и их эффективность может быть снижена.",
                "При использовании монтажной пены в качестве конечного покрытия проемов между оконной рамой и оконным проемом:",
              ],
            ),
            RichText(
              text: TextSpan(
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
                children: [
                  TextSpan(
                    text: "! ",
                    style: GoogleFonts.poppins(
                      fontSize: 27,
                      color: AppColors.red,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const TextSpan(
                      text:
                          "Не позволяйте монтажной пене оставаться непокрытой более 1 месяца, так как она будет терять свои изоляционные свойства и прочность!"),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(Assets.images.appartment.windowScheme.path),
            const SizedBox(height: 20),
            Text(
              "Устройство гидро и\nпароизоляции окон.",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.secondaryDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Герметизация пространства между оконным блоком и проемом включает в себя три основных слоя: центральный, внешний и внутренний.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Центральный слой ",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                      text:
                          "- это в подавляющем большинстве случаев монтажная пена."),
                  TextSpan(
                    text: "Внешний слой ",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                      text:
                          "– гидроизоляция, необходим для исключения попадания влаги со стороны улицы, утепляет проем и защищает его от УФ-излучения."),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Наиболее распространенные материалы для гидроизоляции – это специализированные ленточные изделия, например, сжатая уплотнительная лента и герметизирующие жидкие мастики",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Внутренний слой ",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                      text:
                          "– пароизоляция. Расположен со стороны комнаты, препятствует попаданию влаги в монтажный шов. Это особенно важно при остеклении помещений, в которых бывает сравнительно много паровых скоплений – кухонь или санузлов. Обработка монтажного шва со стороны помещения необходима для его изоляции от попадания сконденсированной влаги и паровых образований. Данный тип отделки может быть реализован герметизирующей фольгой."),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Существует несколько способов утепления окон, которые могут помочь снизить потери тепла и повысить энергоэффективность в помещениях:",
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontWeight: FontWeight.w500,
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
                    context.push(InstalationPVCScreen.routeName);
                  },
                text: "1. Установка пластиковых стеклопакетов (ПВХ);",
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
                    context.push(InstalationSealScreen.routeName);
                  },
                text: "2. Установка уплотнителей;",
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
                    context.push(InstalationSlopesScreen.routeName);
                  },
                text: "3. Установка оконных откосов;",
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
                    context.push(FilmApplicationScreen.routeName);
                  },
                text: "4. Применение энергосберегающей пленки;",
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
                    context.push(SealingCracksScreen.routeName);
                  },
                text: "5. Заклеивание дополнительных щелей и трещин",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
