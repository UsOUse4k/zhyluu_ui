import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/appartment/screens/loggia_balcony/loggia_balcony_inside_screen.dart';
import 'package:zhyluu_ui/features/appartment/screens/loggia_balcony/loggia_balcony_outside_screen.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_gradient.dart';
import 'package:zhyluu_ui/features/common/widgets/enumerating_text.dart';
import 'package:zhyluu_ui/features/common/widgets/my_button.dart';
import 'package:zhyluu_ui/features/common/widgets/text_with_dot.dart';

class LoggiaBalconyScreen extends StatelessWidget {
  static const routeName = "/loggia-balcony";

  const LoggiaBalconyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveGradient(
      title: "УТЕПЛЕНИЕ\nБАЛКОНА / ЛОДЖИИ",
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EnumeratingText(
              title: "Преимущества утепления\nбалкона/ лоджии:",
              includeSpacing: true,
              titleTextStyle: GoogleFonts.poppins(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              texts: const [
                "Энергоэффективность - утепление балкона помогает уменьшить теплопотери через стены, что повышает энергоэффективность всего здания. Это позволяет снизить расходы на отопление и кондиционирование воздуха и сделать жилье более комфортным независимо от времени года.",
                "Защита от холода и влаги - утепленный балкон служит дополнительным барьером от холодного воздуха, ветра и влажности.",
                "Создание дополнительного жилого пространства - после утепления балкон можно преобразовать в дополнительное пространство (кабинет, студию, зону для отдыха, место для хранения вещей и др).",
                "Повышение стоимости недвижимости - утепление балкона может увеличить стоимость жилья при его продаже или сдаче в аренду. Покупатели и арендаторы часто ценят наличие утепленных балконов, которые могут быть использованы как дополнительное жилое пространство.",
                "Защита от повреждений - утепление может предотвратить повреждение балкона из-за экстремальных температурных условий, влажности и образования конденсата.",
                "Теплоизоляция балкона/лоджии позволяет зимой сохранить тепло в квартирах, а летом создать прохладу.",
              ],
            ),
            const SizedBox(height: 15),
            Text(
              "Варианты утеплени\nбалкона/лоджии:",
              style: AppTextStyles.invertedTextStyle,
            ),
            const SizedBox(height: 15),
            RichTextWithDot(
              dotColor: AppColors.yellow,
              text: TextSpan(
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                  letterSpacing: 0.88,
                ),
                children: [
                  TextSpan(
                    text: "Снаружи ",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      letterSpacing: 0.88,
                    ),
                  ),
                  const TextSpan(text: "(только балкон)."),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  text: "Снаружи",
                  onTap: () {
                    context.push(LoggiaBalconyOutsideScreen.routeName);
                  },
                ),
              ],
            ),
            const SizedBox(height: 15),
            RichTextWithDot(
              dotColor: AppColors.yellow,
              text: TextSpan(
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                  letterSpacing: 0.88,
                ),
                children: [
                  TextSpan(
                    text: "Изнутри ",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      letterSpacing: 0.88,
                    ),
                  ),
                  const TextSpan(text: "(балкон и лоджию)."),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  text: "Изнутри",
                  onTap: () {
                    context.push(LoggiaBalconyInsideScreen.routeName);
                  },
                ),
              ],
            ),
            const SizedBox(height: 15),
            RichTextWithDot(
              dotColor: AppColors.yellow,
              text: TextSpan(
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                  letterSpacing: 0.88,
                ),
                children: [
                  TextSpan(
                    text: "С обеих сторон ",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      letterSpacing: 0.88,
                    ),
                  ),
                  const TextSpan(text: "(только балкон)."),
                ],
              ),
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                  letterSpacing: 0.88,
                ),
                children: [
                  TextSpan(
                    text: "Утепление с обеих сторон\n",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.secondary,
                      letterSpacing: 0.88,
                    ),
                  ),
                  const TextSpan(
                      text:
                          "приводит к увеличению затрат в два раза, но при этом не повышает тепловая эффективность. Поэтому достаточно утеплить балкон/лоджию или снаружи или изнутри."),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
