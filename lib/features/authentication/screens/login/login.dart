import 'package:flutter/material.dart';
import 'package:ecolokal2/common/styles/spacing_styles.dart';
import 'package:ecolokal2/utils/helpers/helper_functions.dart';
import 'package:ecolokal2/utils/constants/text_strings.dart';
import 'package:ecolokal2/common/widgets/login_header.dart';
import 'package:ecolokal2/common/widgets/login_form.dart';
import 'package:ecolokal2/common/widgets/form_divider.dart';
import 'package:ecolokal2/common/widgets/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF1FFF1), // Lightest green hint
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithappBarHeight,
          child: Column(
            children: [
              // Logo, Title & Subtitle (removed const to pass runtime values)
              TLoginheader(
                dark: dark,
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),

              // Form (removed const to allow for form interactions)
              const TForm(),

              // Divider (can stay const if it doesn't need runtime values)
              const TFormDivider(dividerText: TTexts.orSignInWith),

              // Social Buttons (can stay const if they don't need runtime values)
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}







