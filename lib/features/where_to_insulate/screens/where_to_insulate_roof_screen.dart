import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/widgets/enumerating_text.dart';
import 'package:zhyluu_ui/features/where_to_insulate/screens/where_to_insulate_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class WhereToInsulateRoofScreen extends StatelessWidget {
  static const routeName = "/where-to-insulate-roof";

  const WhereToInsulateRoofScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WhereToInsulateScreen(
      imagePath: Assets.images.whereToInsulate.roof.path,
      title: "Тепловые потери через крышу здания",
      child: Column(
        children: [
          RichText(
            text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                text:
                    """Через крышу здания теряется примерно 25-30 % от общих потерь. Это еще одно частое место возникновения тепловых мостов в домах. Как правило, утечки тепла в мансардах и чердаках возникают из-за неправильного сделанного соединения теплоизоляции между внешними стенами и несущей конструкцией крыши."""),
          ),
          const SizedBox(height: 7),
          const EnumeratingText(
            title: "Причин для этого много:",
            texts: [
              "Теплый воздух всегда поднимается к потолку, поэтому самый большой перепад температуры приходится на крышу. Если у нее нет надежной теплоизоляции, энергия покидает дом без каких-либо препятствий.",
              "Проверьте целостность и толщину перекрытия на крыше, уделяя особое внимание местам примыкания к стенам.",
              "Крыши часто протекают: если с потолка капает, это первый сигнал того, что утеплитель напитывается водой и намокает (в результате тепло уходит очень быстро).",
            ],
          ),
          const SizedBox(height: 7),
          RichText(
            text: TextSpan(
              style: AppTextStyles.regularTextStyle,
              children: [
                const TextSpan(
                    text:
                        """Подробнее об утеплении крыши здания, можете изучить в разделе """),
                TextSpan(
                  text: "УТЕПЛЕНИЕ КРЫШИ",
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
