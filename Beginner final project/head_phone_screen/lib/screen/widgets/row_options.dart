import 'package:flutter/material.dart';
import 'package:head_phone_screen/core/text_style_manager.dart';
import 'package:head_phone_screen/screen/widgets/custom_icon_logo.dart';

class RowOPtions extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget tailing;
  const RowOPtions({
    super.key,
    required this.icon,
    required this.tailing,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconLogo(icon: icon),
        const SizedBox(width: 12),
        Text(text, style: TextStyleManager.regular16),
        const Expanded(child: SizedBox()),
        tailing
      ],
    );
  }
}
