part of 'package:dart_mock/src/mock_base.dart';

/// return a random dateTime.
///
/// default [start] is 1970-01-01 08:00:00:000.
/// default [end] is 2099-12-31 23:59:59:999.
DateTime dateTime({DateTime start, DateTime end}) {
  return DateTime.fromMillisecondsSinceEpoch(integer(
    min: start != null ? start.millisecondsSinceEpoch : 0,
    max: end != null ? end.millisecondsSinceEpoch : maxDate,
  ));
}

/// return a formatted random dateTime string.
///
/// default [start] is 1970-01-01 08:00:00:000.
/// default [end] is 2099-12-31 23:59:59:999.
/// default [format] is 'yyyy-MM-dd HH:mm:ss', example: 1982-02-06 15:23:33.
String dateTimeString({DateTime start, DateTime end, String format = 'yyyy-MM-dd HH:mm:ss'}) {
  return DateFormat(format).format(dateTime(start: start, end: end));
}
