import 'package:ecolokal2/common/styles/spacing_styles.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';


class SuccessScreen extends StatelessWidget{
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image, title , subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithappBarHeight * 2,
          child: Column(
            children: [
              ///Image
              Image(
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() * 3.2, // 60% of screen width (adjust as needed)
                height: THelperFunctions.screenWidth() * 0.6, // Maintain aspect ratio
                fit: BoxFit.contain, // Ensures proper scaling
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Title & Text
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(subtitle, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Buttons would go here
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: const Text(TTexts.TContinue)),),
            ],
          ),
        ),
      )
    );
  }
}