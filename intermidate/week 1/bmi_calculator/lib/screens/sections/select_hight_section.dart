import 'package:bmi_calculator/core/consts/colors_manager.dart';
import 'package:bmi_calculator/core/consts/text_style_manager.dart';
import 'package:bmi_calculator/screens/widgets/hight_selector.dart';
import 'package:flutter/material.dart';

class SelectHightSection extends StatelessWidget {
  const SelectHightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorsManager.disActive,
      borderRadius: BorderRadius.circular(16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Hight',
              style: TextStyleManager.greyBold24,
            ),
          ),
          SizedBox(height: 16),
          HightSelector(),
        ],
      ),
    );
  }
}
