import 'package:bmi_calculator/core/consts/colors_manager.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;

  const CustomAppBar({super.key, required this.title, this.leading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      foregroundColor: ColorsManager.primary,
      leading: leading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
