import 'package:ecolokal2/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/success_screen/success_screen.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5E6D4), // #F5E6D4 background
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFF5E6D4), // Optional: match appbar color
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(TImages.emailGirl),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Title & Text
              Text(
                  TTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                  'laurenceayo7@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                  TTexts.confirmEmailSubtitle,
                  style: Theme.of(context).textTheme.bodyMedium, // Changed to bodyMedium for subtitle
                  textAlign: TextAlign.center
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Buttons would go here
              // Continue Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                        () => SuccessScreen(
                      image: TImages.congratulateIcon,
                      title: TTexts.yourAccountCreatedTitle,
                      subtitle: TTexts.yourAccountCreatedSubtitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    ),
                  ),
                  child: const Text(TTexts.TContinue),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

// Resend Email Button
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    // Add resend email logic here
                  },
                  child: const Text(TTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}