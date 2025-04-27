import 'package:flutter/material.dart';
import 'package:head_phone_screen/screen/widgets/details_section.dart';
import 'package:head_phone_screen/screen/widgets/footer.dart';
import 'package:head_phone_screen/screen/widgets/photo_section.dart';

class HeadPhoneScreen extends StatelessWidget {
  const HeadPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PhotoSection(),
            DetailsSection(),
            SizedBox(height: 40),
            Footer(),
          ],
        ),
      ),
    );
  }
}
