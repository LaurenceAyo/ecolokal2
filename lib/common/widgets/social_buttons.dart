import 'package:flutter/material.dart';
import 'package:ecolokal2/utils/constants/colors.dart';
import 'package:ecolokal2/utils/constants/image_strings.dart';
import 'package:ecolokal2/utils/constants/sizes.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Facebook Button
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Image(
              width: 24, // Use the same for both
              height: 24,
              image: AssetImage(TImages.facebookLogo),
            ),
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        // Google Button
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Image(
              width: 24,
              height: 24,
              image: AssetImage(TImages.googleLogo),
            ),
          ),
        ),
      ],
    );
  }
}