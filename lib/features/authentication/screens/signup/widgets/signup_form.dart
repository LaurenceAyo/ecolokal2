import 'package:flutter/material.dart';
import 'package:ecolokal2/utils/constants/sizes.dart';
import 'package:ecolokal2/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';
import '../../onboarding/widgets/terms_conditions_checkbox.dart';
import 'package:ecolokal2/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:get/get.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Color(0xFFF8FBF8), // Lightest green background
      ),
      child: Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
                const SizedBox(width: TSizes.spaceBtwInputFields),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            /// Username
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.username,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),

            /// Email
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),

            /// Phone Number
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.phoneNo,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),

            /// Password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// Terms Conditions Checkbox
            const TTermsAndConditionCheckbox(),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// Sign up Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()) , child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

