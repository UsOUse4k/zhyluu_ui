import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zhyluu_ui/features/common/widgets/my_button.dart';
import 'package:zhyluu_ui/features/main/screens/main_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class StartingScreen extends StatelessWidget {
  static const routeName = "/starting";

  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            Assets.images.starting.background.path,
            fit: BoxFit.fitWidth,
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 52),
                Container(
                  width: 48,
                  height: 48,
                  alignment: Alignment.center,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(Assets.images.logo.path),
                ),
                const SizedBox(height: 43),
                Text(
                  "Добро пожаловать в".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    letterSpacing: 0.66,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  "“ЖЫЛУУ УЙ”",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.oswald(
                    fontSize: 28,
                    letterSpacing: 2.16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  "УТЕПЛЯЙТе дом и экономьте деньги!".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    letterSpacing: 0.16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                MyButton(
                  text: "НАЧАТЬ",
                  onTap: () {
                    context.go(MainScreen.routeName);
                  },
                ),
                const SizedBox(height: 29),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
