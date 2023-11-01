import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zhyluu_ui/features/appartment/screens/appartment_screen.dart';
import 'package:zhyluu_ui/features/house/screens/house_screen.dart';
import 'package:zhyluu_ui/features/main/widgets/my_main_card.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CategoryCarousel extends StatelessWidget {
  const CategoryCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final cards = [
      MyMainCard(
        onTap: () {
          context.push(AppartmentScreen.routeName);
        },
        imagePath: Assets.images.main.appartment.path,
        text: "Квартира",
      ),
      MyMainCard(
        onTap: () {
          context.push(HouseScreen.routeName);
        },
        imagePath: Assets.images.main.house.path,
        text: "Частный дом",
      ),
    ];
    final controller = PageController(viewportFraction: 0.65);

    return Column(
      children: [
        ExpandablePageView.builder(
          controller: controller,
          itemCount: cards.length,
          itemBuilder: (context, index) {
            return cards[index];
          },
        ),
        const SizedBox(height: 20),
        SmoothPageIndicator(
          controller: controller,
          count: cards.length,
          onDotClicked: (index) {
            controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          },
          effect: const ColorTransitionEffect(
            spacing: 24,
            dotWidth: 12,
            dotHeight: 12,
            dotColor: Color(0xFFB8B7B5),
            activeDotColor: Color(0xFFF3533B),
          ),
        ),
      ],
    );
  }
}
