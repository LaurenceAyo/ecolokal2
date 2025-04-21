import 'package:ecolokal2/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7E8C9), // Added the hex color here
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7E8C9), // Optional: matching AppBar color
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                image: const AssetImage(TImages.oldMan),
                width: THelperFunctions.screenWidth() * 3.2, // 60% of screen width (adjust as needed)
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Title & Text
              Text(TTexts.changePasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.changePasswordSubtitle, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Buttons would go here
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(TTexts.done)),),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(width: double.infinity, child: TextButton(onPressed: () {}, child: const Text(TTexts.resendEmail)),),
              const SizedBox(height: TSizes.spaceBtwItems),
            ],
          ),
        ),
      ),
    );
  }
}