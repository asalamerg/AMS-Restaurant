import 'package:ams_restaurant/feature/authentication/view/login.dart';
import 'package:ams_restaurant/feature/authentication/view/register.dart';
import 'package:ams_restaurant/feature/onboarding/view/onboarding.dart';
import 'package:ams_restaurant/shared/app_theme.dart';
import 'package:flutter/material.dart';

import 'feature/home_screen/view/home_screen.dart';

void main() {
  runApp(const Restaurant());
}

class Restaurant extends StatelessWidget {
  const Restaurant({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName :(context)=>HomeScreen(),
        LoginScreen.routeName :(context)=>LoginScreen(),
        RegisterScreen.routeName :(context)=>RegisterScreen(),
        Onboarding.routeName :(context)=>Onboarding(),
      },
      initialRoute: Onboarding.routeName,
      theme: AppTheme.lightTheme,
      themeMode:  ThemeMode.light,
    );
  }
}

