import 'package:flutter/material.dart';

class CustomIconLogo extends StatelessWidget {
  final IconData icon;
  const CustomIconLogo({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.red[100],
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        height: 35,
        width: 35,
        child: Icon(
          icon,
          color: Colors.red[600],
        ),
      ),
    );
  }
}
