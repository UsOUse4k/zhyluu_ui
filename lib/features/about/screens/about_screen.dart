import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/features/common/extensions/build_context_extension.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_color.dart';
import 'package:zhyluu_ui/features/common/widgets/bell_button.dart';
import 'package:zhyluu_ui/features/common/widgets/my_app_bar.dart';
import 'package:zhyluu_ui/features/common/widgets/my_back_button.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = "/about";

  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldColor(
      backgroundColor: AppColors.secondary,
      appBar: MyAppBar(
        bellButtonType: BellButtonType.light,
        isBellVisible: false,
        leading: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: MyBackButton(
            onTap: () {
              context.pop();
            },
          ),
        ),
      ),
      bottomBar: const MyBottonBar(),
      body: SizedBox(
        width: context.screenSize.width,
        height: context.screenSize.height,
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 225),
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 27),
                        Text(
                          "О проекте",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Image.asset(Assets.images.about.image02.path),
                    const SizedBox(height: 23),
                    Image.asset(Assets.images.about.image03.path),
                    const SizedBox(height: 23),
                    Image.asset(Assets.images.about.image04.path),
                    const SizedBox(height: 23),
                    Image.asset(Assets.images.about.image05.path),
                    const SizedBox(height: 8),
                    Text(
                      "КНАУ им. С.И. Скрябина",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 23),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 27),
                      child: Text(
                        """Информационно-обучающее мобильное приложение «Жылуу уй» разработано в рамках реализации инициативы «Повышение осведомленности населения Кыргызстана по вопросам энергоэффективности зданий в целях сокращения выбросов в атмосферу и митигации и адаптации к изменению климата» по программе малых грантов проекта «Таза Келечек».

Целью мобильного приложения является повышение уровня осведомленности населения страны по энергоэффективности зданий для сокращения использования твердого топлива.

В качестве первого шага к энергоэффективным зданиям, приложение в основном направлено на информирование людей о необходимости и важности теплоизоляции домов, а также на обучение людей основным методам теплоизоляции для экономия денег на отоплении. В качестве долгосрочной цели, приложение направлено на снижение уровня загрязнения воздуха в города Кыргызской Республики и сокращения выбросов в атмосферу для адаптации и смягчения последствий изменения климата.

Информация в мобильном приложении изложена простым языком для того, чтобы была понятна всем. В качестве источников для содержательной части приложения были использованы собственные разработки, подсчеты привлеченных экспертов, а также материалы, опубликованные в рамках ранее реализованных проектов в области энергоэффективности зданий, в частности, были использованы Руководство для монтажников по теплоизоляции полов и потолков (проект “Укрепление потенциала кыргызской ассоциации-рациональное использование энергии в зданиях-фаза II”, ЕБРР), Каталог технических решений по теплоизоляции наружных ограждающих конструкций индивидуальных жилых домов (“КыргызНИИПСС”, ОФ “Camp alatoo”, проект ГЭФ/ПРООН “Улучшение энергоэффективности в зданиях”), СНиП КР 23-01-2013 Строительная теплотехника (тепловая защита зданий), СП 23-101-2013 Проектирование тепловой защиты зданий, СНиП КР 23-02-00 Строительная климатология, ГОСТ 26602.2-99 Оконные и дверные блоки: методы определения воздухпроницаемости и проанализированные интернет-источники.

Мобильное приложение «Жылуу уй» профинансирована за счет гранта Государственного департамента США. Мнения и выводы, изложенные в приложении, принадлежат авторам и не обязательно отражают точку зрения Государственного департамента США.

Мобильное приложение “Жылуу уй” создано инициативной группой КНАУ имени К.И. Скрябина (Кенжебаева А.В., Анарбек Б.), а также командой привлеченных экспертов - Орозобековой А.Ч., Греб В. О., Миграновым Р.А., Элемановым О.И., Рысмендеевой Н.К. Выражаем благодарность всей сплоченной команде разработчиков и экспертов.
""",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 45),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(Assets.images.about.image01.path),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
