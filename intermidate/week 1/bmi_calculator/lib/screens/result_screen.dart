import 'package:bmi_calculator/core/consts/colors_manager.dart';
import 'package:bmi_calculator/core/consts/text_style_manager.dart';
import 'package:bmi_calculator/provider/input_provider.dart';
import 'package:bmi_calculator/screens/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/screens/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final inputProvider = context.read<InputProvider>();
    final double bmr = inputProvider.calculateBMR();
    final String category = inputProvider.bmrCategory();
    final String advice = inputProvider.getAdvice(category);

    return Scaffold(
      appBar: const CustomAppBar(title: 'Results'),
      body: Center(
        child: Card(
          color: ColorsManager.disActive,
          margin: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your BMR',
                  style: TextStyleManager.whiteBold40,
                ),
                const SizedBox(height: 10),
                Text(
                  '${bmr.toStringAsFixed(2)} calories/day',
                  style: TextStyleManager.primaryBold24,
                ),
                const SizedBox(height: 20),
                Text(
                  'Category: $category',
                  style: TextStyleManager.whiteBold20,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Advice:',
                  style: TextStyleManager.whiteBold30,
                ),
                const SizedBox(height: 10),
                Text(
                  advice,
                  style: TextStyleManager.greyRegular16,
                ),
                const SizedBox(height: 30),
                CustomButton(
                  onPressed: () => Navigator.of(context).pop(),
                  title: 'Re-calculate',
                  icon: Icons.refresh,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
