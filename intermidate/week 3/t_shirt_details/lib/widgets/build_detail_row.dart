import 'package:flutter/material.dart';

class BuildDetailRow extends StatelessWidget {
  final String title;
  final String value;
  const BuildDetailRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        children: [
          Text(title, style: const TextStyle(color: Colors.grey, fontSize: 16)),
          const SizedBox(width: 5),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
