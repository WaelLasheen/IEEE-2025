import 'package:flutter/material.dart';
import 'package:todo_list/data/functions/date/current_time_format.dart';
import 'package:todo_list/utils/colors_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManager.grey200,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              text: "To do List ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              children: [
                WidgetSpan(
                  child: Icon(Icons.check_box, color: ColorsManager.green),
                ),
              ],
            ),
          ),

          Row(
            children: [
              Text(getFormattedDate(), style: TextStyle(fontSize: 16)),
              SizedBox(width: 6),
              Icon(Icons.calendar_today, size: 20, color: ColorsManager.grey),
            ],
          ),
        ],
      ),
    );
  }
}
