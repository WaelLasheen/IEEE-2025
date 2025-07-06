import 'package:flutter/material.dart';
import 'package:head_phone_screen/core/text_style_manager.dart';
import 'package:head_phone_screen/screen/widgets/row_options.dart';
import 'package:head_phone_screen/screen/widgets/select_color.dart';
import 'package:head_phone_screen/screen/widgets/star_rate.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('SODO 1004', style: TextStyleManager.boldBlack24),
              StarRate(),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Wireless Over-ear Industry Leading Noise Canceling Headphones with Microphone',
            style: TextStyleManager.regularDeepGrey16,
          ),
          SizedBox(height: 16),
          RowOPtions(
            icon: Icons.insert_drive_file_rounded,
            text: 'Product Specification',
            tailing: Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(height: 8),
          Divider(
            indent: 10,
            endIndent: 10,
            color: Color(0xFFBDBDBD),
          ),
          SizedBox(height: 8),
          RowOPtions(
            icon: Icons.color_lens,
            text: 'Colors',
            tailing: SelectColor(),
          ),
        ],
      ),
    );
  }
}
