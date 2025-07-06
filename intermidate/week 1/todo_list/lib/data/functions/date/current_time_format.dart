import 'package:intl/intl.dart';

String getFormattedDate() {
  DateTime now = DateTime.now();

  String day = now.day.toString();
  String weekday = DateFormat('EEE').format(now).toUpperCase();

  return "$day $weekday";
}
