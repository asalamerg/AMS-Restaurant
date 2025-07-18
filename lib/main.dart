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
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

