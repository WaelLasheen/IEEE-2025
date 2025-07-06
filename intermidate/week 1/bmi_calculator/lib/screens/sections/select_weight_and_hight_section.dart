import 'package:bmi_calculator/provider/input_provider.dart';
import 'package:bmi_calculator/screens/widgets/value_stepper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectWeightAndHightSection extends StatelessWidget {
  const SelectWeightAndHightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ValueStepper(
          title: 'Weight',
          onIncrement: context.read<InputProvider>().incrementWeight,
          onDecrement: context.read<InputProvider>().decrementWeight,
          selector: (BuildContext, InputProvider) => InputProvider.weight,
        ),
        ValueStepper(
          title: 'Age',
          onIncrement: context.read<InputProvider>().incrementAge,
          onDecrement: context.read<InputProvider>().decrementAge,
          selector: (BuildContext, InputProvider) => InputProvider.age,
        ),
      ],
    );
  }
}
