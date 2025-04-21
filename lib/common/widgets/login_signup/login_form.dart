import 'package:flutter/material.dart';
import 'package:ecolokal2/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ecolokal2/utils/constants/sizes.dart';
import 'package:get/get.dart';
import '../../../features/authentication/screens/password_configuration/forget_password.dart';
import '../../../features/authentication/screens/signup/signup.dart';
import '../../../navigation_menu.dart';

class TForm extends StatelessWidget {
  const TForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: const Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text(TTexts.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(TTexts.forgotPassword),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white, // Text color
                  side: const BorderSide(color: Colors.green), // Border color
                ),
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()) , child: const Text(TTexts.createAccount),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
          ],
        ),
      ),
    );
  }
}