import 'package:flutter/material.dart';
import 'package:head_phone_screen/provider/headphone_provider.dart';
import 'package:head_phone_screen/screen/widgets/select_color_button.dart';
import 'package:provider/provider.dart';

class SelectColor extends StatelessWidget {
  const SelectColor({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HeadphoneProvider>(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectColorButton(
          color: Colors.black,
          index: 0,
          onTap: () => provider.setColorIndex(0),
        ),
        SelectColorButton(
          color: Colors.brown,
          index: 1,
          onTap: () => provider.setColorIndex(1),
        ),
        SelectColorButton(
          color: Colors.grey,
          index: 2,
          onTap: () => provider.setColorIndex(2),
        ),
      ],
    );
  }
}
