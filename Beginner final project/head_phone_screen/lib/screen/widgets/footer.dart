import 'package:flutter/material.dart';
import 'package:head_phone_screen/core/text_style_manager.dart';
import 'package:head_phone_screen/screen/widgets/custom_button.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: const TextSpan(
              text: '\$349.',
              style: TextStyleManager.semiBoldBlack20,
              children: [
                TextSpan(text: '99', style: TextStyleManager.regularDeepGrey16)
              ],
            ),
          ),
          const CustomButton(text: 'Add To Card'),
        ],
      ),
    );
  }
}
