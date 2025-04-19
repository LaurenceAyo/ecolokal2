import 'package:flutter/material.dart';
import 'package:ecolokal2/utils/helpers/helper_functions.dart';
import 'package:ecolokal2/utils/constants/sizes.dart';
import 'package:ecolokal2/utils/device/device_utlity.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ecolokal2/utils/constants/colors.dart';
import 'package:ecolokal2/features/authentication/screens/onboarding/widgets/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: DeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor: dark? TColors.primary: Colors.green,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}