import 'package:flutter/material.dart';
import 'package:todo_list/utils/colors_manager.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: ColorsManager.grey,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            color: ColorsManager.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
