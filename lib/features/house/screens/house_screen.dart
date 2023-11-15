import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_color.dart';
import 'package:zhyluu_ui/features/common/widgets/my_app_bar.dart';
import 'package:zhyluu_ui/features/common/widgets/my_back_button.dart';
import 'package:zhyluu_ui/features/common/widgets/my_house_appartment_card.dart';
import 'package:zhyluu_ui/features/common/widgets/my_menu_button.dart';
import 'package:zhyluu_ui/features/house/screens/floor/floor_screen.dart';
import 'package:zhyluu_ui/features/house/screens/fundament/fundament_screen.dart';
import 'package:zhyluu_ui/features/house/screens/roof/roof_screen.dart';
import 'package:zhyluu_ui/features/house/screens/wall/wall_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class HouseScreen extends StatelessWidget {
  static const routeName = "/house";

  const HouseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldColor(
      appBar: MyAppBar(
        myMenuButtonType: MyMenuButtonType.inverted,
        leading: Padding(
          padding: const EdgeInsets.only(top: 9),
          child: MyBackButton(
            type: MyBackButtonType.inverted,
            onTap: () {
              context.pop();
            },
          ),
        ),
      ),
      backgroundColor: AppColors.primary,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 114),
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Text(
                  "Хочу утеплить:",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Colors.black,
                    letterSpacing: 0.63,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 43),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 32),
                childAspectRatio: 118 / 136,
                crossAxisCount: 2,
                mainAxisSpacing: 43,
                crossAxisSpacing: 61,
                children: [
                  MyHouseAppartmentCard(
                    onTap: () {
                      context.push(RoofScreen.routeName);
                    },
                    iconPath: Assets.icons.house.roof.path,
                    text: "Крышу",
                  ),
                  MyHouseAppartmentCard(
                    onTap: () {
                      context.push(WallScreen.routeName);
                    },
                    iconPath: Assets.icons.house.wall.path,
                    text: "Стены",
                  ),
                  MyHouseAppartmentCard(
                    onTap: () {
                      context.push(FloorScreen.routeName);
                    },
                    iconPath: Assets.icons.house.floor.path,
                    text: "Пол",
                  ),
                  MyHouseAppartmentCard(
                    onTap: () {
                      context.push(FundamentScreen.routeName);
                    },
                    iconPath: Assets.icons.house.fundament.path,
                    text: "Фундамент",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
