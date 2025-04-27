import 'package:flutter/material.dart';
import 'package:head_phone_screen/screen/widgets/photo_card.dart';
import 'package:provider/provider.dart';
import 'package:head_phone_screen/provider/headphone_provider.dart';

class SelectCover extends StatelessWidget {
  const SelectCover({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HeadphoneProvider>(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width * .3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int i = 0; i < provider.currentColorImages.length; i++)
            PhotoCard(
              image: provider.currentColorImages[i],
              onTap: () => provider.setSelectedIndex(i),
              index: i,
            ),
        ],
      ),
    );
  }
}
