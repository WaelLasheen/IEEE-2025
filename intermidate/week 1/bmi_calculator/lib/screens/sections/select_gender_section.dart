import 'package:bmi_calculator/provider/input_provider.dart';
import 'package:bmi_calculator/screens/widgets/gender_bottom.dart';
import 'package:flutter/material.dart';

class SelectGender extends StatelessWidget {
  const SelectGender({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GenderBottom(gender: Gender.male),
        SizedBox(width: 10),
        GenderBottom(gender: Gender.female),
      ],
    );
  }
}
