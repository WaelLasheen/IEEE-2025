import 'package:bmi_calculator/core/consts/colors_manager.dart';
import 'package:bmi_calculator/core/consts/text_style_manager.dart';
import 'package:bmi_calculator/provider/input_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GenderBottom extends StatelessWidget {
  final Gender gender;
  const GenderBottom({super.key, required this.gender});

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height * 0.2;
    double width = MediaQuery.of(context).size.width * 0.45;
    return Selector<InputProvider, Gender>(
      selector: (context, provider) => provider.gender,
      builder: (context, gender, child) => InkWell(
        onTap: gender != this.gender
            ? context.read<InputProvider>().changeGender
            : null,
        child: Container(
          height: hight,
          width: width,
          decoration: BoxDecoration(
            color: gender == this.gender
                ? ColorsManager.active
                : ColorsManager.disActive,
            borderRadius: BorderRadius.circular(16),
            border: gender == this.gender
                ? Border.all(color: ColorsManager.primary, width: 2)
                : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                this.gender == Gender.male ? Icons.male : Icons.female,
                color: ColorsManager.primary,
                size: 70,
              ),
              const SizedBox(height: 10),
              Text(
                this.gender == Gender.male ? 'Male' : 'Female',
                style: TextStyleManager.primaryBold24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
