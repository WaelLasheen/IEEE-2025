import 'package:bmi_calculator/core/consts/text_style_manager.dart';
import 'package:bmi_calculator/provider/input_provider.dart';
import 'package:bmi_calculator/screens/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NumericAdjuster extends StatelessWidget {
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final int Function(BuildContext, InputProvider) selector;
  const NumericAdjuster(
      {super.key, required this.onIncrement, required this.onDecrement, required this.selector});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomIconButton(onPressed: onIncrement, icon: Icons.add),
        Selector<InputProvider, int>(
          selector: selector,
          builder: (context, value, child) => Text(
            value.toString(),
            style: TextStyleManager.whiteBold40,
          ),
        ),
        CustomIconButton(onPressed: onDecrement, icon: Icons.remove),
      ],
    );
  }
}
