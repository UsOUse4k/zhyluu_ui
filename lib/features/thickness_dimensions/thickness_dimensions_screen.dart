import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_gradiend.dart';
import 'package:zhyluu_ui/features/common/widgets/bell_button.dart';
import 'package:zhyluu_ui/features/common/widgets/my_app_bar.dart';
import 'package:zhyluu_ui/features/common/widgets/my_back_button.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class ThicknessDimensionsScreen extends HookWidget {
  static const routeName = "/thickness-dimensions";

  const ThicknessDimensionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentId = useState(0);

    final controller = PageController();

    void onTap() {
      currentId.value += 1;

      controller.animateToPage(
        currentId.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }

    return MyScaffoldGradient(
      backgroundGradiend: AppColors.backgroundGradient,
      appBar: MyAppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 9),
          child: MyBackButton(
            onTap: () {
              context.pop();
            },
          ),
        ),
        bellButtonType: BellButtonType.light,
      ),
      bottomBar: MyBottonBar(
        iconPath: Assets.icons.size.path,
        type: MyBottomBarType.hexagon,
      ),
      body: Column(
        children: [
          const SizedBox(height: 114),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller,
              children: [
                TIManager(
                  text: "Область",
                  currentId: currentId.value,
                  children: [
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.bishkek.path),
                      text: "Бишкек",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.issykKol.path),
                      text: "Ысык-Кол",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.naryn.path),
                      text: "Нарын",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.talas.path),
                      text: "Талас",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.djalalAbad.path),
                      text: "Джалал-Абад",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.osh.path),
                      text: "Ош",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.batken.path),
                      text: "Баткен",
                      onTap: onTap,
                    ),
                  ],
                ),
                TIManager(
                  text: "Населённый пункт",
                  currentId: currentId.value,
                  children: [
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.population.path),
                      text: "Бишкек",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.population.path),
                      text: "Ысык-Кол",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.population.path),
                      text: "Нарын",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.population.path),
                      text: "Талас",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.population.path),
                      text: "Джалал-Абад",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.population.path),
                      text: "Ош",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.population.path),
                      text: "Баткен",
                      onTap: onTap,
                    ),
                  ],
                ),
                TIManager(
                  text: "Дом",
                  currentId: currentId.value,
                  children: [
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.wall.path),
                      text: "Стена",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.floor.path),
                      text: "Пол",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.roof.path),
                      text: "Перекрытие крыши",
                      onTap: onTap,
                    ),
                  ],
                ),
                TIManager(
                  text: "Стена",
                  currentId: currentId.value,
                  children: [
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.wallDetails.path),
                      text: "Кирпич",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.wallDetails.path),
                      text: "Газобетон",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.wallDetails.path),
                      text: "Пенобетон",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.wallDetails.path),
                      text: "Саман/Солома",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.wallDetails.path),
                      text: "Глинобит/Гуаляк/Пахса",
                      onTap: onTap,
                    ),
                  ],
                ),
                TIManager(
                  text: "Кирпич",
                  currentId: currentId.value,
                  children: [
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.brick.path),
                      text: "Глинянный",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.brick.path),
                      text: "Керамический",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.brick.path),
                      text: "Силикатный",
                      onTap: onTap,
                    ),
                  ],
                ),
                TIManager(
                  text: "Толщина стен",
                  currentId: currentId.value,
                  children: [
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.roulette.path),
                      text: "200",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.roulette.path),
                      text: "250",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.roulette.path),
                      text: "300",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.roulette.path),
                      text: "350",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.roulette.path),
                      text: "400",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.roulette.path),
                      text: "450",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.roulette.path),
                      text: "500",
                      onTap: onTap,
                    ),
                  ],
                ),
                TIManager(
                  text: "Пол",
                  currentId: currentId.value,
                  children: [
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.floorDetails.path),
                      text: "ЖБ плита",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.floorDetails.path),
                      text: "Монолитная ЖБ плита",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.floorDetails.path),
                      text: "Ячеистый бетон",
                      onTap: onTap,
                    ),
                  ],
                ),
                TIManager2(
                  text: "1.Покрытие пола",
                  subText: "На грунте:",
                  currentId: currentId.value,
                  children: [
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.ceramics.path),
                      text: "Керамическая плита/кафель",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.marble.path),
                      text: "Мрамор",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.linoleumParquet.path),
                      text: "Линолеум/Паркет",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.laminate.path),
                      text: "Ламинат",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.wood.path),
                      text: "Дерево",
                      onTap: onTap,
                    ),
                  ],
                ),
                TIManager2(
                  text: "2.Покрытие пола",
                  subText: "Железобетон:",
                  currentId: currentId.value,
                  children: [
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.ceramics.path),
                      text: "Керамическая плита/кафель",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.marble.path),
                      text: "Мрамор",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.linoleumParquet.path),
                      text: "Линолеум/Паркет",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.laminate.path),
                      text: "Ламинат",
                      onTap: onTap,
                    ),
                    TICard(
                      icon: SvgPicture.asset(Assets.icons.wood.path),
                      text: "Дерево",
                      onTap: onTap,
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 6,
                          left: 26,
                          bottom: 18,
                        ),
                        child: Text(
                          "Ваш список:",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                            letterSpacing: 0.63,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 28),
                          SvgPicture.asset(Assets.icons.check.path),
                          const SizedBox(width: 18),
                          Text(
                            "Нарын",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: const Color(0xFF28332D),
                              letterSpacing: 0.52,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          const SizedBox(width: 28),
                          SvgPicture.asset(Assets.icons.check.path),
                          const SizedBox(width: 18),
                          Text(
                            "Частный дом",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: const Color(0xFF28332D),
                              letterSpacing: 0.52,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(width: 28),
                          SvgPicture.asset(Assets.icons.check.path),
                          const SizedBox(width: 18),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Пол:\n",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    color: const Color(0xFF28332D),
                                    letterSpacing: 0.52,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: "Монолитная ЖБ плита\n",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    color: const Color(0xFF28332D),
                                    letterSpacing: 0.52,
                                  ),
                                ),
                                TextSpan(
                                  text: "Покрытие пола:\n",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    color: const Color(0xFF28332D),
                                    letterSpacing: 0.52,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: "Керамическая плита/кафель",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    color: const Color(0xFF28332D),
                                    letterSpacing: 0.52,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFF5B42),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: onTap,
                            child: SizedBox(
                              width: 301,
                              height: 32,
                              child: Center(
                                child: Text(
                                  "Подвердить",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    letterSpacing: 0.35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 93),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 19),
                      Text(
                        "Рекомендация для вас:",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.black,
                          letterSpacing: 0.63,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 14),
                      Container(
                        height: 47,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 5,
                            color: const Color(0xFF50D88C),
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            Image.asset(
                              Assets.images.penopolisterol.path,
                              width: 34,
                              height: 34,
                            ),
                            const SizedBox(width: 20),
                            Text(
                              "Пенополистирол (ППС)",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Colors.black,
                                letterSpacing: 0.63,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 47,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 5,
                            color: const Color(0xFF50D88C),
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            Image.asset(
                              Assets.images.penopoliyretan.path,
                              width: 34,
                              height: 34,
                            ),
                            const SizedBox(width: 20),
                            Text(
                              "Пенополиуретан (ПУ)",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Colors.black,
                                letterSpacing: 0.63,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 47,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 5,
                            color: const Color(0xFF50D88C),
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            Image.asset(
                              Assets.images.penopoliuretan2.path,
                              width: 34,
                              height: 34,
                            ),
                            const SizedBox(width: 20),
                            Text(
                              "Пенополиуретан (ПУ)",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Colors.black,
                                letterSpacing: 0.63,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TIManager extends StatelessWidget {
  const TIManager({
    super.key,
    required this.text,
    required this.children,
    required this.currentId,
  });

  final String text;
  final List<Widget> children;
  final int currentId;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 26),
          child: Text(
            text,
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
              fontSize: 32,
              color: Colors.white,
              letterSpacing: 0.48,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 3),
        const Divider(
          height: 1,
          color: AppColors.primary,
        ),
        const SizedBox(height: 38),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < 9; i++)
                Container(
                  width: 35,
                  height: 5,
                  decoration: BoxDecoration(
                    color: i < currentId
                        ? const Color(0xFFFF5B42)
                        : i == currentId
                            ? const Color(0xFFFAC710)
                            : const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 22.5),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: GridView.count(
              padding: const EdgeInsets.only(
                top: 29,
                bottom: 113.65,
                right: 27,
                left: 27,
              ),
              childAspectRatio: 138 / 112,
              crossAxisCount: 2,
              mainAxisSpacing: 17,
              crossAxisSpacing: 28,
              children: children,
            ),
          ),
        ),
      ],
    );
  }
}

class TIManager2 extends StatelessWidget {
  const TIManager2({
    super.key,
    required this.text,
    required this.subText,
    required this.children,
    required this.currentId,
  });

  final String text;
  final String subText;
  final List<Widget> children;
  final int currentId;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 26),
          child: Text(
            text,
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
              fontSize: 32,
              color: Colors.white,
              letterSpacing: 0.48,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 3),
        const Divider(
          height: 1,
          color: AppColors.primary,
        ),
        const SizedBox(height: 38),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < 9; i++)
                Container(
                  width: 35,
                  height: 5,
                  decoration: BoxDecoration(
                    color: i < currentId
                        ? const Color(0xFFFF5B42)
                        : i == currentId
                            ? const Color(0xFFFAC710)
                            : const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 22.5),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 6,
                      left: 26,
                    ),
                    child: Text(
                      subText,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.black,
                        letterSpacing: 0.75,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 27),
                    childAspectRatio: 138 / 112,
                    crossAxisCount: 2,
                    mainAxisSpacing: 17,
                    crossAxisSpacing: 28,
                    children: children,
                  ),
                  const SizedBox(height: 113.65),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TICard extends StatelessWidget {
  const TICard({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  final Widget icon;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 138,
      height: 112,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: const Color(0xFFF7F8FC),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onTap?.call();
          },
          child: Column(
            children: [
              const SizedBox(height: 20),
              icon,
              const SizedBox(height: 14),
              SizedBox(
                width: 112,
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.black,
                    letterSpacing: 0.42,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
