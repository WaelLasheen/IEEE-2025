import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/t_shirt_details_provider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class RatingSelector extends StatelessWidget {
  const RatingSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final TShirtDetailsProvider tShirtDetailsController =
        Provider.of<TShirtDetailsProvider>(context, listen: false);
    return Row(
      children: [
        RatingBar.builder(
          initialRating: tShirtDetailsController.currentRating,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 20.0,
          itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
          itemBuilder: (context, _) =>
              const Icon(Icons.star, color: Colors.red),
          onRatingUpdate: (rating) {
            tShirtDetailsController.setCurrentRating(rating);
          },
        ),
        const SizedBox(width: 8),
        Selector<TShirtDetailsProvider, double>(
          selector: (_, provider) => provider.currentRating,
          builder: (_, value, _) => Text(
            value.toStringAsFixed(1),
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
