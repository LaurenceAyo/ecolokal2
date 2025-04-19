import 'package:flutter/material.dart';
import 'package:ecolokal2/utils/constants/sizes.dart';
import 'package:ecolokal2/utils/device/device_utlity.dart';
import 'package:ecolokal2/features/authentication/screens/onboarding/widgets/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace ,
      child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: Text('Skip')
      ),
    );
  }
}