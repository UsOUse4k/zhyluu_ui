import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/widgets/enumerating_text.dart';
import 'package:zhyluu_ui/features/where_to_insulate/screens/where_to_insulate_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class WhereToInsulateFloorScreen extends StatelessWidget {
  static const routeName = "/where-to-insulate-floor";

  const WhereToInsulateFloorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WhereToInsulateScreen(
      imagePath: Assets.images.whereToInsulate.floor.path,
      title: "Тепловые потери через пол",
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              style: AppTextStyles.regularTextStyle,
              text:
                  """Неизолированное перекрытие отдает весомую часть тепла фундаменту и стенам. Как показывает практический опыт, значительная часть тепла уходит на участке соединения стены и пола, через мостики холода в углу. При определенных температурных условиях в таком углу появляется повышенная влажность, а со временем развивается плесень и грибок.""",
            ),
          ),
          const SizedBox(height: 7),
          const EnumeratingText(
            title: "Основными причинами утечки тепла в области пола являются:",
            texts: [
              "особенности конструкции строения;",
              "использование материалов с разным показателем теплопроводности;",
              "неплотные стыки, щели и другие строительные дефекты;",
              "отсутствующая или некачественная тепло и гидроизоляция стяжки на первом этаже.",
            ],
          ),
          const SizedBox(height: 7),
          RichText(
            text: TextSpan(
              style: AppTextStyles.regularTextStyle,
              children: [
                const TextSpan(
                    text:
                        """Подробнее об утеплении пола, можно изучить в разделе """),
                TextSpan(
                  text: "УТЕПЛЕНИЕ ПОЛА",
                  style: AppTextStyles.invertedTextStyle,
                ),
                const TextSpan(text: "."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
