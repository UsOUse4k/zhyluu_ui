import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_gradient.dart';
import 'package:zhyluu_ui/features/common/widgets/my_button.dart';
import 'package:zhyluu_ui/features/house/screens/fundament/fundament_inside_screen.dart';
import 'package:zhyluu_ui/features/house/screens/fundament/fundament_outside/fundament_outside_screen.dart';

class FundamentScreen extends StatelessWidget {
  static const routeName = "/fundament";

  const FundamentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveGradient(
      title: "УТЕПЛЕНИЕ\nФУНДАМЕНТА",
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Утепление фундамента - это процесс добавления теплоизоляционных материалов вокруг фундамента здания или сооружения, чтобы уменьшить потерю тепла и повысить энергоэффективность здания. Это может быть важной частью строительства или ремонта здания, особенно если оно находится в холодных климатических условиях.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Преимущества утепления\nфундамента:",
              style: AppTextStyles.invertedTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1. Энергоэффективность: ",
                    style: AppTextStyles.regularTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Утепленный фундамент позволяет снизить потребление энергии на отопление и кондиционирование помещений, что в конечном итоге сокращает расходы на энергию.",
                      style: AppTextStyles.regularTextStyle,
                    ),
                  ),
                  Text(
                    "2. Защита от переохлаждения: ",
                    style: AppTextStyles.regularTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Утепление предотвращает охлаждение фундамента в холодное время года, что может помочь предотвратить промерзание грунта и снижает риск повреждения фундамента из-за морозов.",
                      style: AppTextStyles.regularTextStyle,
                    ),
                  ),
                  Text(
                    "3. Повышение комфорта: ",
                    style: AppTextStyles.regularTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Утепленный фундамент помогает поддерживать более стабильную температуру внутри здания, что обеспечивает более комфортные условия для проживания или работы.",
                      style: AppTextStyles.regularTextStyle,
                    ),
                  ),
                  Text(
                    "4. Защита от влаги: ",
                    style: AppTextStyles.regularTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Гидроизоляционные материалы, применяемые для защиты фундамента от проникновения влаги, способствуют увеличению срока эксплуатации здания в целом.",
                      style: AppTextStyles.regularTextStyle,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "! Если дом уже построен и эксплуатируется длительное время, вскрытие фундамента – это очень ответственный процесс, требующий кропотливой проработки и длительной подготовки.",
                    style: AppTextStyles.redTextStyle,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(FundamentOutsideScreen.routeName);
                  },
                  text: "УТЕПЛЕНИЕ\nСНАРУЖИ",
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    context.push(FundamentInsideScreen.routeName);
                  },
                  text: "УТЕПЛЕНИЕ\nИЗНУТРИ",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
