import 'package:bmi_calculator/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/input_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => InputProvider(),
      child: MaterialApp(
        title: 'BMR Calculator',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const SplashScreen(),
      ),
    );
  }
}
