import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:head_phone_screen/screen/head_phone_screen.dart';
import 'package:provider/provider.dart';
import 'package:head_phone_screen/provider/headphone_provider.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => HeadphoneProvider(),
        child: const HeadPhoneScreen(),
      ),
    );
  }
}
