import 'package:bmi_calculator/core/consts/colors_manager.dart';
import 'package:bmi_calculator/core/consts/text_style_manager.dart';
import 'package:bmi_calculator/provider/input_provider.dart';
import 'package:flutter/material.dart';

import 'numeric_adjuster.dart';

class ValueStepper extends StatelessWidget {
  final String title;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final int Function(BuildContext, InputProvider) selector;
  const ValueStepper(
      {super.key,
      required this.title,
      required this.onIncrement,
      required this.onDecrement,
      required this.selector});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorsManager.disActive,
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.45,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: TextStyleManager.greyBold24,
            ),
            NumericAdjuster(
              onIncrement: onIncrement,
              onDecrement: onDecrement,
              selector: selector,
            ),
          ],
        ),
      ),
    );
  }
}
