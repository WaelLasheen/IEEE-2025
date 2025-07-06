import 'package:bmi_calculator/screens/sections/select_gender_section.dart';
import 'package:bmi_calculator/screens/sections/select_hight_section.dart';
import 'package:bmi_calculator/screens/sections/select_weight_and_hight_section.dart';
import 'package:bmi_calculator/screens/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/screens/widgets/custom_button.dart';
import 'package:bmi_calculator/screens/widgets/main_icon.dart';
import 'package:flutter/material.dart';

import 'result_screen.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'BMI Calculator',
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: MainIcon(size: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SelectGender(),
              const SizedBox(height: 20),
              const SelectHightSection(),
              const SizedBox(height: 20),
              const SelectWeightAndHightSection(),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ResultScreen(),
                  ),
                ),
                title: 'title',
                icon: Icons.calculate_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
