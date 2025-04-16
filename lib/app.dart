import 'package:flutter/material.dart';
import 'package:ecolokal2/utils/theme/theme.dart';

///-- USE THIS Class to Setup Themes --///
class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ECOLOKAL',
      themeMode: ThemeMode.system,
      theme: GAppTheme.lightTheme,
      darkTheme: GAppTheme.darkTheme,
    );
  }
}