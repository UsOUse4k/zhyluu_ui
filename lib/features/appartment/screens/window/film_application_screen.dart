import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class FilmApplicationScreen extends StatelessWidget {
  static const routeName = "/film-application-screen";

  const FilmApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      imagePath: Assets.images.appartment.filmApplication.path,
      title: "4 Применение энергосберегающей пленки для окон:",
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Теплозащитная пленка может быть наклеена на стекло окон, чтобы уменьшить переход тепла сквозь стекло и увеличить теплоизоляцию. Пластиковые окна являются отличным препятствием для холодного воздуха зимой, однако при сильных морозах если их правильно и вовремя не утеплить, могут возникнуть проблемы. Теплый воздух начнет уходить на улицу, а холодный вместе с влагой приходит в помещение и вызывать обледенение стекла. Чтобы избавиться от этого, можно утеплить проем, заделав все щели. Довольно распространенным способом является утепление пластикового окна пленкой: оно дает хороший результат при минимальных затратах.\n\nЭнергосберегающая пленка позволяет сэкономить до 30% энергии, что значительно повышает способность помещения сохранять тепло. Некоторые виды пленок способны удерживать до 70 % тепла, а, как известно, большая часть потерь происходит именно через стекло и щели.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Image.asset(Assets.images.appartment.energySavingScheme.path),
            const SizedBox(height: 15),
            Text(
              "Для того чтобы сделать помещение теплее, необходимо для начала закрыть все возможные щели при помощи пены и герметика. Произвести зимнюю регулировку окон. После этого можно выполнять утепление окон пластиковых пленкой. Ее наклеивают на стекло с внутренней или наружной стороны. Пленка обычно не мешает, приклеивается достаточно плотно, поэтому не отслаивается при эксплуатации окна. Темно в помещении не будет, если использовать прозрачное изделие.",
              style: AppTextStyles.regularTextStyle,
            ),
            Text(
              "При желании можно установить тонированную пленку:",
              style: AppTextStyles.italicTextStyle,
            ),
            Text(
              "в летнее время она сократит количество ультрафиолета в комнате, сделает ее более прохладной.\nБывают разные варианты плёнок для утепления негерметичных окон и стеклопакетов ПЭТ и ПВХ.\nПЭТ-листы это пластик на основе полиэтилентерефталата. Использование таких листов является самоделкой, это и близко не стеклопакет по своим характеристикам.\nПЕТ для утепления негерметичных окон и стеклопакетов сначала крепится снаружи, а потом внутри помещения!\nПоэтому теплоизоляцией надо начинать в тёплое время года, а не тогда, когда за окном ударили сильные морозы.",
              style: AppTextStyles.regularTextStyle,
            ),
            Text(
              "Монтаж энергосберегающей пленки:",
              style: GoogleFonts.poppins(
                color: AppColors.secondary,
                fontStyle: FontStyle.italic,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Окно отмывают от загрязнений, обезжиривают и высушивают, его поверхность должна быть идеально гладкой, не иметь загрязнений и пятен.\nПосле того как все сделано, по периметру рамы нужно закрепить двусторонний скотч, после этого слои пленки разъединяют, для этого можно поддеть пленку ножом.\nПосле этого подготовленная пленка для утепления ПВХ окон раскраивается по нужному размеру в зависимости от размера и формы стекла и крепится к скотчу. Можно удалять защитный слой.\nЗатем нужно равномерно распределить пленку по стеклу, неважно, будут ли складки.\nПосле нужно обдуть поверхность феном, при нагревании происходит усадка материала и он выравнивается. Механически давить на изделие не следует, можно расправить его ветошью.",
              style: AppTextStyles.regularTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
