import 'package:bmi_calculator/core/consts/colors_manager.dart';
import 'package:bmi_calculator/core/consts/text_style_manager.dart';
import 'package:bmi_calculator/provider/input_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HightSelector extends StatelessWidget {
  const HightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<InputProvider, int>(
      selector: (context, provider) => provider.height,
      builder: (BuildContext context, value, _) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            value.toString(),
            style: TextStyleManager.whiteBold60,
          ),
          const SizedBox(height: 8),
          Slider(
            value: context.read<InputProvider>().height.toDouble(),
            onChanged: (double value) =>
                context.read<InputProvider>().changeHight(value),
            min: 100,
            max: 250,
            activeColor: ColorsManager.active,
            inactiveColor: ColorsManager.black,
            thumbColor: ColorsManager.primary,
          ),
        ],
      ),
    );
  }
}
