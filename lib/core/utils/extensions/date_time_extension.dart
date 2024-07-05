part of 'extensions.dart';

extension XDateTimeExtension on DateTime {
  String toFormatDate([String pattern = 'dd/MM/yyyy', String? locale]) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }

  DateTime get withoutTime => DateTime(year, month, day);
}
