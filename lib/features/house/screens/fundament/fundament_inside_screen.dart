import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class FundamentInsideScreen extends StatelessWidget {
  static const routeName = "/fundament-inside";

  const FundamentInsideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "УТЕПЛЕНИЕ\nИЗНУТРИ",
      imagePath: Assets.images.fundament.image10.path,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  const TextSpan(
                      text:
                          "В некоторых случаях, когда утепление снаружи не представляется возможным или эффективным, утепление фундамента изнутри может быть хорошим вариантом. Утепление изнутри можно выполнить с помощью распыления пенополиуретана, как наиболее эффективный способ.\n\n"),
                  TextSpan(
                    text: "Подготовка поверхности: ",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          "Как и при любом методе утепления, поверхность фундамента должна быть хорошо очищена от грязи, пыли и мусора. При необходимости выполняется ремонт повреждений фундамента и гидроизоляция.\n\n"),
                  TextSpan(
                    text: "Гидроизоляция: ",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          "Помимо утепления, рекомендуется также провести гидроизоляцию внутренних поверхностей фундамента, чтобы предотвратить проникновение влаги и влажности.\n\n"),
                  TextSpan(
                    text: "Утепление стен: ",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          """Утепление выполняется путем установки теплоизоляционных материалов на внутреннюю поверхность стен фундамента. Обычно используются пенополистирольные или минеральноватные плиты, которые крепятся на стены с помощью клея или специальных крепежей.
Засыпка: Далее можно засыпать землей, керамзитом или песком до уровня пола.\n\n"""),
                  const TextSpan(
                      text:
                          "Важно отметить, что утепление фундамента изнутри может быть менее эффективным, чем утепление снаружи, поскольку оно не предотвращает теплопотери через саму структуру фундамента и не защищает его от влаги и воздействия окружающей среды. Однако, в некоторых ситуациях, это может быть единственным доступным вариантом или использоваться в сочетании с другими методами утепления."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
