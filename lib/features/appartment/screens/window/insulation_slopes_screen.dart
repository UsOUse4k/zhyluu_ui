import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/features/common/widgets/enumerating_text.dart';
import 'package:zhyluu_ui/features/common/widgets/my_container_text.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class InstalationSlopesScreen extends StatelessWidget {
  static const routeName = "/insulation-seal-screen";

  const InstalationSlopesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "3 Установка оконных откосов.",
      imagePath: Assets.images.appartment.installationSlopes.path,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1. Откосы помогают предотвратить образование холодных мостов между оконными рамами и стенами, что способствует улучшению теплоизоляции.\nМонтаж наружных откосов нельзя откладывать надолго. Это может губительно повлиять на новые окна. Можно отложить отделку внутренних откосов на некоторое время, но наружные откосы необходимо утеплять сразу после монтажа оконной конструкции.",
                  style: AppTextStyles.italicTextStyle,
                ),
                Text(
                  "Штукатурные откосы",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: AppColors.secondaryDark,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "отделка откосов окон штукатуркой. Данный вид отделки наружных откосов окон является самым традиционным и экономичным. В данном процессе применяется сухая смесь на основе цемента или гипса и смеси, имеющие водоотталкивающие свойства.",
                  style: AppTextStyles.regularTextStyle,
                ),
                const SizedBox(height: 15),
                Text(
                  "Процесс установки пластиковых откосов",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: AppColors.secondaryDark,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "-Перед началом отделочных работ поверхность уличных откосов тщательно очищается от грязи, пыли и неровностей. Выпирающая часть монтажной пены срезается острым канцелярским ножом. Чтобы не запачкать и не поцарапать окно, его необходимо закрыть малярным скотчем или пленкой.\n-После тщательной очистки поверхности откосов следует выполнить грунтовку, которая обеспечит лучшее сцепление штукатурки с основанием. Грунтовку наносят широкой кистью.\n-Затем подготовка раствора до состояния «сметаны». Замеса должно хватать только на одну укладку, так как невыработанный раствор быстро высыхает;\nРаствор укладывается слоями. Для укрепления слоёв используется строительная сетка.\nВ случае, если используется маяки, готовую цементно-гипсовую смесь наносят по маякам, чтобы полностью заполнить данное пространство. После этого поверхность откоса разглаживается с помощью широкого шпателя снизу вверх. После того, как фрагмент частично подсохнет, маяки извлекаются, а места их нахождения замазываются и разглаживаются.\n-Штукатурный слой должен быть тонким, не превышающим 5-7 мм, и каждый следующий слой следует наносить только после хорошего высыхания предыдущего. Необходимо также обращать внимание на выравнивание углов. Толщину штукатурного слоя рассчитать таким образом, чтобы он закрывал окно на 1 см, при этом стандартная толщина слоя должна быть немного больше двух сантиметров.\n-После того, как отделка достигнет нужной степени твердости, деревянные рейки можно снять. Места их нахождения аккуратно замазываются штукатурной смесью с последующим разглаживанием. Затем поверхность откосов аккуратно выравнивается с помощью терки, которую следует использовать по слегка увлажненной поверхности без сильного давления, выполняя круговые движения.\n-После окончательного высыхания поверхность откосов подвергается шпаклевке и может быть покрыта побелкой или краской.",
                  style: AppTextStyles.regularTextStyle,
                ),
                const SizedBox(height: 15),
                Text(
                  "Пластиковые откосы: ",
                  style: AppTextStyles.italicTextStyle,
                ),
                Text(
                  "пластик активно используется для наружных откосов окон, особенно в сочетании с металлопластиковыми окнами, создавая визуально единый и современный облик.",
                  style: AppTextStyles.regularTextStyle,
                ),
                const SizedBox(height: 15),
                Text(
                  "Перед укладкой пластиковой панели необходимо подготовить:",
                  style: AppTextStyles.italicTextStyle,
                ),
                Text(
                  "- Планку пластиковую П-образной формы\n- Деревянную рейку шириной до 70 мм и толщиной до 15 мм\n- Наличник F-образной формы.",
                  style: AppTextStyles.regularTextStyle,
                ),
                const SizedBox(height: 15),
                Text(
                  "Процесс установки пластиковых откосов",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const MyContainerText(
            color: AppColors.red,
            text: "1",
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Assets.images.appartment.windowInstalation1.path),
                const SizedBox(height: 15),
                Text(
                  "Сбоку и сверху к оконной раме с помощью саморезов крепится стартовая планка.",
                  style: AppTextStyles.regularTextStyle,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const MyContainerText(
            color: AppColors.secondary,
            text: "2",
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Assets.images.appartment.windowInstalation2.path),
                const SizedBox(height: 15),
                Text(
                  "По краям проёма выставляются по уровню и укрепляются рейки.\nМежду верхней и боковыми рейками оставляется зазор на толщину панели.",
                  style: AppTextStyles.regularTextStyle,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const MyContainerText(
            color: Color(0xFF39C1B0),
            text: "3",
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Assets.images.appartment.windowInstalation3.path),
                const SizedBox(height: 15),
                Text(
                  "При необходимости укладывается утеплитель.",
                  style: AppTextStyles.regularTextStyle,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const MyContainerText(
            color: AppColors.yellow,
            text: "4",
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Assets.images.appartment.windowInstalation4.path),
                const SizedBox(height: 15),
                Text(
                  "Верхняя часть откоса вырезается по размерам, а затем вставляется в стартовую панель и зазоры между боковыми рейками.",
                  style: AppTextStyles.regularTextStyle,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const MyContainerText(
            color: AppColors.secondaryDark,
            text: "5",
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Assets.images.appartment.windowInstalation5.path),
                const SizedBox(height: 15),
                Text(
                  "Вставляем F — образные наличники в наши рейки и закрепляем строительным степлером.",
                  style: AppTextStyles.regularTextStyle,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const MyContainerText(
            color: Color(0xFFFF8787),
            text: "6",
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Assets.images.appartment.windowInstalation5.path),
                const SizedBox(height: 15),
                Text(
                  "Завершается процесс укладки герметизацией силиконовым или другим герметиком мест стыковок панелей.",
                  style: AppTextStyles.regularTextStyle,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: EnumeratingText(
              title: "Процесс установки металлических откосов",
              titleTextStyle: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
              includeSpacing: true,
              texts: const [
                "1. Замеряется оконный проём, и листы металла разрезаются на полосы. Полоса для нижней части проёма вырезается с небольшим запасом для формирования водяного стока.",
                "2. Подготовка и подгонка металлического листа",
                "3. Первой монтируется нижняя часть — отлив. Он прикручивается к раме и имеет небольшие заходы на боковые участки оконного проёма. Важно, чтобы отлив был отклонён от окна. Монтаж оконных отливов начинается с формирования внутреннего зубца на профиле. За него заводится крепление к раме. По замерам вырезается заготовка. Около 2 см оставляется на загибы.",
                "4. Устанавливаются боковые полосы. Они плотно прижимаются к поверхности проёма и закрывают загнутые части отлива.",
                "5. На завершающем этапе устанавливается верхняя полоса. Для улучшения изоляционных характеристик конструкции в места стыков полос наносится герметик.",
              ],
            ),
          ),
        ],
      ),
    );
  }
}
