import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/where_to_insulate/screens/where_to_insulate_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class WhereToInsulateWindowsDoorsScreen extends StatelessWidget {
  static const routeName = "/where-to-insulate-windows-doors";

  const WhereToInsulateWindowsDoorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WhereToInsulateScreen(
      imagePath: Assets.images.whereToInsulate.windowsDoors.path,
      title: "Оконные и дверные проемы",
      child: RichText(
        text: TextSpan(
          style: AppTextStyles.regularTextStyle,
          children: [
            const TextSpan(
                text:
                    """Другими критическими точками утечки тепла являются окна и двери во внешних стенах, особенно перемычки и прямые соединения окна со стеной здания.
Тепловые потери через окно происходят по нескольким каналам: потери через оконный блок и переплеты (мостики холода, неплотности), потери за счет теплопроводности воздуха и конвективных потоков между стеклами, а также теплопотери посредством теплового излучения. Очевидно, что, величина теплопотерь через оконный блок напрямую зависит от конструкции окна, используемых материалов, качества изготовления. В реальности она составляет около 10 % от общих теплопотерь из помещения. Остальные два канала теплопотерь - это потери непосредственно через остекление.\n\nОценить правильно ли были выполнены работы в этом случае довольно сложно.
Если ошибки видны, мы можем минимизировать потери тепла на стыках, используя так называемую установку теплых окон с использованием лент и герметизирующей фольги.
Подробнее об утеплении окон и дверей, вы можете изучить в разделе """),
            TextSpan(
              text: "УТЕПЛЕНИЕ ОКОН ",
              style: AppTextStyles.invertedTextStyle,
            ),
            const TextSpan(text: "и "),
            TextSpan(
              text: "УТЕПЛЕНИЕ ДВЕРЕЙ",
              style: AppTextStyles.invertedTextStyle,
            ),
            const TextSpan(text: "."),
          ],
        ),
      ),
    );
  }
}
