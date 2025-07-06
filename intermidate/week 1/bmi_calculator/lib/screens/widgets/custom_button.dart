import 'package:bmi_calculator/core/consts/colors_manager.dart';
import 'package:bmi_calculator/core/consts/text_style_manager.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final IconData icon;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        backgroundColor: ColorsManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyleManager.blackBold28,
            ),
            const SizedBox(width: 12),
            Icon(
              icon,
              color: ColorsManager.black,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
