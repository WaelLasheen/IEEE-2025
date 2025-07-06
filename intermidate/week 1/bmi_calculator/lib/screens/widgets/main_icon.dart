import 'package:bmi_calculator/core/consts/colors_manager.dart';
import 'package:flutter/material.dart';

class MainIcon extends StatelessWidget {
  final double size;
  const MainIcon({super.key, this.size =100});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorsManager.primary,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: Icon(
        Icons.hourglass_full_rounded,
        color: ColorsManager.black,
        size: size,
      ),
    );
  }
}
