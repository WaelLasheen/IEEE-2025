import 'package:flutter/material.dart';
import 'package:head_phone_screen/provider/headphone_provider.dart';
import 'package:provider/provider.dart';

class SelectColorButton extends StatelessWidget {
  final Color color;
  final int index;
  final GestureTapCallback onTap;

  const SelectColorButton({
    super.key,
    required this.color,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HeadphoneProvider>(context, listen: false);

    return InkWell(
      onTap: onTap,
      child: ValueListenableBuilder(
        valueListenable: provider.colorIndexNotifier,
        builder: (context, _, __) => Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: Border.all(
                color: provider.currentColorIndex == index
                    ? Colors.red
                    : Colors.white),
          ),
        ),
      ),
    );
  }
}
