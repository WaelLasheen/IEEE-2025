import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/t_shirt_details_provider.dart';
import 'package:provider/provider.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({super.key});

  @override
  Widget build(BuildContext context) {
    final tShirtDetailsController = Provider.of<TShirtDetailsProvider>(
      context,
      listen: false,
    );
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2C),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.remove, color: Colors.white),
            onPressed: () {
              tShirtDetailsController.decreaseQuantity();
            },
          ),
          Selector<TShirtDetailsProvider, int>(
            selector: (_, provider) => provider.quantity,
            builder: (_, value, _) => Text(
              value.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () {
              tShirtDetailsController.increaseQuantity();
            },
          ),
        ],
      ),
    );
  }
}
