import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/t_shirt_details_provider.dart';
import 'package:provider/provider.dart';

class SizeSelector extends StatelessWidget {
  const SizeSelector({super.key});

  final List<String> _sizes = const ['S', 'M', 'L', 'XL', '2XL'];

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: _sizes.map((size) {
        return GestureDetector(
          onTap: () => Provider.of<TShirtDetailsProvider>(
            context,
            listen: false,
          ).setSelectedSize(size),
          child: Selector<TShirtDetailsProvider, String>(
            selector: (_, provider) => provider.selectedSize,
            builder: (_, selectedSize, _) => Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: selectedSize == size
                    ? Colors.red
                    : const Color(0xFF2C2C2C),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: selectedSize == size ? Colors.red : Colors.transparent,
                  width: 2,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                size,
                style: TextStyle(
                  color: selectedSize == size ? Colors.white : Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
