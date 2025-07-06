import 'package:flutter/material.dart';
import 'package:head_phone_screen/core/text_style_manager.dart';

class StarRate extends StatelessWidget {
  const StarRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE0E0E0)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        children: [
          Icon(Icons.star, color: Colors.yellow, size: 20),
          SizedBox(width: 4),
          Text(
            '4.9 ',
            style: TextStyleManager.semiBoldBlack16,
          ),
        ],
      ),
    );
  }
}
