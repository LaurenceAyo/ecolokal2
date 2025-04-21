import 'package:ecolokal2/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget{
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Heading
            Text(TTexts.forgetPasswordTitle, style:Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.forgetPasswordSubtitle, style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///Text Fields
            TextFormField(
              decoration: const InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct_right),),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///Submit Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.off(() => const ResetPassword()), child: const Text(TTexts.submit)),),
          ],
        )
      )
      );
  }
}