import 'package:flutter/material.dart';
import 'package:ecolokal2/utils/constants/image_strings.dart';
import 'package:ecolokal2/utils/constants/sizes.dart';
import 'package:ecolokal2/utils/constants/text_strings.dart';

class TLoginheader extends StatelessWidget {
  const TLoginheader({
    super.key,
    required this.dark,
    required this.screenWidth,
    required this.screenHeight,
  });

  final bool dark;
  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(
            dark ? TImages.lightAppLogo : TImages.darkAppLogo,
            width: screenWidth * 0.6,
            height: screenHeight * 0.2,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: TSizes.sm),
        Text(
          TTexts.loginSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}