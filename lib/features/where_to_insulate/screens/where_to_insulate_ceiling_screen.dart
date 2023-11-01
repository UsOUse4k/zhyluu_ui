import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/where_to_insulate/screens/where_to_insulate_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class WhereToInsulateCeilingScreen extends StatelessWidget {
  static const routeName = "/where-to-insulate-ceiling";

  const WhereToInsulateCeilingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WhereToInsulateScreen(
      imagePath: Assets.images.whereToInsulate.ceiling.path,
      title: "Соединение потолка со стеной",
      child: RichText(
        text: TextSpan(
          style: AppTextStyles.regularTextStyle,
          children: const [
            TextSpan(
                text:
                    """Еще одно место, где часто обнаруживают тепловые мосты - это соединение потолка со стеной в, так называемом, венке.
Однако в более старых зданиях эта проблема встречается куда чаще, особенно после замены старых и протекающих деревянных окон на ПВХ-окна. В этих местах могут скапливаться влага, появится плесень и даже грибок. Всему виной стык между плитой перекрытия и внешним краем стены. К счастью, устранить тепловой мост здесь можно, если аккуратно выровнять стык плиты с краем стены."""),
          ],
        ),
      ),
    );
  }
}
