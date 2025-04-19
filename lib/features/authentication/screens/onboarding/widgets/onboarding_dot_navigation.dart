import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ecolokal2/features/authentication/screens/onboarding/widgets/onboarding_controller.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
    required this.controller,
    required this.count,
  });

  final PageController controller;
  final int count;

  @override
  Widget build(BuildContext context) {
    final controller= OnBoardingController.instance;
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Positioned(
      bottom: 50, // Adjust this value as needed
      left: 0,
      right: 0,
      child: Center(
        child: SmoothPageIndicator(
          controller: controller.pageController,
          count: 3,
          onDotClicked: controller.dotNavigationClick,
          effect: ExpandingDotsEffect(
            activeDotColor: isDarkMode ? Colors.white : Colors.black,
            dotColor: isDarkMode ? Colors.grey[600]! : Colors.grey[300]!,
            dotHeight: 6,
            dotWidth: 6,
            spacing: 8,
            expansionFactor: 2,
          ),
        ),
      ),
    );
  }
}