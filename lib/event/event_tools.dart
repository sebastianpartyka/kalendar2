import 'package:intl/intl.dart';

class DateTools {
  static String toDateTime(DateTime dateTime) {
    final date = DateFormat.yMMMEd().format(dateTime);
    final time = DateFormat.Hm().format(dateTime);

    return '$date $time';
  }

  static String toDate(DateTime dateTime) {
    final date = DateFormat.yMMMEd().format(dateTime);
    return date;
  }

  static String toTime(DateTime dateTime) {
    final time = DateFormat.Hm().format(dateTime);
    return time;
  }
}

class Event {
  final String title;
  final DateTime from;
  final DateTime to;

  Event({
    required this.title,
    required this.from,
    required this.to,
  });
}
