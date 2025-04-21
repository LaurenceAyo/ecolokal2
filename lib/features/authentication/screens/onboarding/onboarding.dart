import 'package:flutter/material.dart';
import 'package:ecolokal2/utils/constants/image_strings.dart';
import 'package:ecolokal2/utils/constants/text_strings.dart';
import 'package:ecolokal2/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecolokal2/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecolokal2/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecolokal2/features/authentication/screens/onboarding/widgets/onboarding_controller.dart';
import 'package:ecolokal2/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatefulWidget {  // Must be StatefulWidget
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();  // Non-const controller
  final controller = Get.put(OnBoardingController());

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              /// Horizontal Scrollable Pages

              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
                backgroundColor: Color(0xFFf5f2ee),
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
                backgroundColor: Color(0xFFf1e5d6),
              ),
            ],
          ),

          // Skip Button - can stay const
          const OnBoardingSkip(),

          // Dot Navigation - remove const from instance only
          OnBoardingDotNavigation(
            controller: _pageController,
            count: 3,
          ),

          // Circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}

