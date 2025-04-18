import 'package:flutter/material.dart';
import 'package:ecolokal2/utils/theme/theme.dart';
import 'package:ecolokal2/features/authentication/screens/onboarding/onboarding.dart';
import 'package:get/get.dart';

///-- USE THIS Class to Setup Themes --///
class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      title: 'ECOLOKAL',
      themeMode: ThemeMode.system,
      theme: GAppTheme.lightTheme,
      darkTheme: GAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}