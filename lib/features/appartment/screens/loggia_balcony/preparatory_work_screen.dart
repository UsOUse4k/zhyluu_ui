import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_image_background.dart';
import 'package:zhyluu_ui/features/common/widgets/enumerating_text.dart';

class PreparatoryWorkScreen extends StatelessWidget {
  static const routeName = "/preparatory-work-screen";

  const PreparatoryWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldImageBackground(
      title: "Подготовительные\nработы",
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          children: [
            EnumeratingRichText(
              title: TextSpan(
                text: "1. Планирование и подготовка",
                style: GoogleFonts.poppins(
                  color: AppColors.secondary,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.56,
                ),
              ),
              texts: [
                TextSpan(
                    style: AppTextStyles.regularTextStyle,
                    text:
                        "Оцените необходимое количество утеплителя и материалов. Исходите из размеров балкона и степени утепления, которую хотите достичь."),
                TextSpan(
                  style: AppTextStyles.regularTextStyle,
                  children: [
                    TextSpan(
                      text: "Приобретите:\n",
                      style: AppTextStyles.italicTextStyle,
                    ),
                    const TextSpan(
                        text:
                            "- утеплитель (например, минеральную вату, пенопласт или экструдированный пенополистирол),\n- строительные инструменты, клей или монтажную пену, декоративные материалы (плитки, панели) для отделки.")
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            EnumeratingText(
              title: "2. Подготовка поверхностей",
              titleTextStyle: GoogleFonts.poppins(
                color: AppColors.secondary,
                fontSize: 16,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.56,
              ),
              texts: const [
                "Тщательно осмотрите балкон/лоджию, обратив внимание на наличие повреждений, трещин, и следов влажности. Проверьте также состояние окон и дверей, чтобы убедиться, что они герметично закрываются и не пропускают холодный воздух.",
                "Тщательно очистите помещение от грязи, пыли и лишних предметов, удалите со стен, пола и потолка старую краску, обои т.п. Чистые стены, потолок, пол обеспечат лучшую адгезию (способность покрытия к прочному сцеплению с поверхностью основания) новых материалов.",
                "Заделайте все швы и трещины. Мелкие трещины и щелочки можно замазать атмосферостойким герметиком. Крупные щели можно заделать монтажной пеной. Это важно, чтобы предотвратить проникновение влаги и обеспечить прочное основание для утеплителя.",
                "Если вы обнаружите проблемы с влажностью, такие как протекание крыши или стены, утечка из окон или другие источники влаги, они должны быть исправлены до начала утепления. Влага может нанести серьезный вред утеплителю и привести к образованию плесени.",
              ],
            ),
            const SizedBox(height: 15),
            EnumeratingText(
              title: "3. Грунтовка поверхностей",
              titleTextStyle: GoogleFonts.poppins(
                color: AppColors.secondary,
                fontSize: 16,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.56,
              ),
              texts: const [
                "После того, как вы подготовили поверхность, пришло время нанести грунтовку. Это шаг, который вы не должны пропускать.",
                "Сначала тщательно перемешайте грунтовку, чтобы смесь стала однородной. После этого кистью или валиком равномерно нанести грунтовку на поверхность балкона. Когда вы закончите первый слой, дайте ему высохнуть.",
                "Затем примерно через час нанесите второй слой. Наконец, дайте обоим слоям высохнуть не менее 3 часов. Грунтовка может стать сухой на ощупь через час, но это не означает, что она готова к нанесению следующего слоя. Не наносите грунтовку, пока она еще влажная. Если вы это сделаете, то не только покрытие не приклеится, но и испортит грунтовочный слой.",
              ],
            ),
            const SizedBox(height: 15),
            EnumeratingRichText(
              title: TextSpan(
                children: [
                  const TextSpan(
                      text: "Выравнивание поверхностей (стен, потолка, пола) "),
                  TextSpan(
                    text: "выполняется при необходимости.",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.56,
                    ),
                  ),
                ],
                style: GoogleFonts.poppins(
                  color: AppColors.secondary,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.56,
                ),
              ),
              texts: [
                TextSpan(
                  children: [
                    TextSpan(
                      text: "1. ",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.56,
                      ),
                    ),
                    TextSpan(
                      text: "Выравнивание потолка ",
                      style: GoogleFonts.poppins(
                        color: AppColors.secondary,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.56,
                      ),
                    ),
                    const TextSpan(
                        text:
                            "- проводится с помощью штукатурных смесей аналогичным со стенами (описан ниже) образом. При использовании мокрых процессов выравнивание потолка рекомендуется проводить до работ со стенами и полом. (Мокрый процесс – использование смеси на гипсовой основе, цементной штукатурки, плитки. Требуется время для высыхания слоев)."),
                  ],
                  style: AppTextStyles.regularTextStyle,
                ),
                TextSpan(
                  children: [
                    TextSpan(
                      text: "2. ",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.56,
                      ),
                    ),
                    TextSpan(
                      text: "Выравнивание стен ",
                      style: GoogleFonts.poppins(
                        color: AppColors.secondary,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.56,
                      ),
                    ),
                    const TextSpan(
                        text:
                            "- проводится с помощью цементно-песчаных смесей. Смеси могут быть как готовые, так и изготовленные непосредственно на месте проведения работ. Для создания ровной поверхности стен с помощью выравнивающих смесей рекомендуется использовать "),
                    TextSpan(
                      text: "маячковый метод",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.56,
                      ),
                    ),
                    const TextSpan(
                        text:
                            ". Маяки устанавливаются так, чтобы образовалась единая плоскость. Для правильной установки маяков применяются отвесы, которые задают вертикальное расположение. Для выведения единой плоскости по горизонтали можно использовать нитку, натянутую между крайними точками основания, либо воспользоваться лазерным уровнем. Штукатурным составом заполняется пространство между соседними маяками. Затем при помощи правила, ширина которого больше расстояния между соседними маяками, производится выравнивание нанесенной штукатурки. После нанесения выравнивающего слоя поверхность оставляют до полного отверждения штукатурной смеси."),
                  ],
                  style: AppTextStyles.regularTextStyle,
                ),
                TextSpan(
                  children: [
                    TextSpan(
                      text: "3. ",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.56,
                      ),
                    ),
                    TextSpan(
                      text: "Выравнивание пола ",
                      style: GoogleFonts.poppins(
                        color: AppColors.secondary,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.56,
                      ),
                    ),
                    const TextSpan(
                        text:
                            "– проводится с помощью стяжек (стяжка - это промежуточный слой между основанием пола и финишным покрытием, например линолеумом). Виды стяжек:\n- Сухие/сборные стяжки применяются в основном для устройства черновой поверхности пола по слою теплоизоляции.\n- Полусухая – используется стандартная пескоцементная смесь, но затворяемая минимальным количеством воды, чтобы раствор быстрее высыхал.\n- Мокрая – выполняется из цементно-песчаного раствора.\n- Самовыравнивающиеся (наливной пол) – использование специальной смеси из цемента, гипса, песка, клея и пластификаторов. Смесь хорошо заполняет изъяны основного покрытия и растекается по всей площади балкона/лоджии.\nДля выравнивания пола перед укладкой теплоизоляции используются полусухие, мокрые и самонивелирующиеся стяжки."),
                  ],
                  style: AppTextStyles.regularTextStyle,
                ),
              ],
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Выполнение полусухой/мокрой стяжки:\n",
                    style: GoogleFonts.poppins(
                      color: AppColors.secondary,
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.56,
                    ),
                  ),
                  const TextSpan(
                      text:
                          "Смесь полусухой/мокрой стяжки засыпается между установленными в одной плоскости маяками и разравнивается правилом."),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Выполнение самонивелирующейся стяжки:\n",
                    style: GoogleFonts.poppins(
                      color: AppColors.secondary,
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.56,
                    ),
                  ),
                  const TextSpan(
                      text:
                          "Самонивелирующаяся стяжка (наливной пол) монтируется без использования маяков. Раствор в виде шликера разливается по поверхности пола необходимым по толщине слоем. Далее стяжка выдерживается в течение определенного времени до набора необходимой прочности (3–7 суток) и после этого готова для дальнейшего производства работ."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
