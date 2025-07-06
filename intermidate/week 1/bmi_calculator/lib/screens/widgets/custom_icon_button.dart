import 'package:bmi_calculator/core/consts/colors_manager.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  const CustomIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      style: IconButton.styleFrom(
        backgroundColor: ColorsManager.primary,
        foregroundColor: ColorsManager.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
