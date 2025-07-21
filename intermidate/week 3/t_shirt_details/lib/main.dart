import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/t_shirt_details_provider.dart';
import 'package:flutter_application_1/screens/tshirt_detail_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'T-shirt Detail',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Audiowide'),
      home: ChangeNotifierProvider(
        create: (BuildContext context) => TShirtDetailsProvider(),
        child: const TShirtDetailsScreen(),
      ),
    );
  }
}
