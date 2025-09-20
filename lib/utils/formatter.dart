import 'package:intl/intl.dart';

class Formatter {
  static const _locale = 'id_ID';

  static String date(DateTime date) => DateFormat.yMMMM(_locale).format(date);

  static String dateWithDelimitter(DateTime date, {String delimitter = '-'}) {
    final day = date.day;
    final month = date.month;
    final year = date.year;

    return '$day$delimitter$month$delimitter$year';
  }

  static String currency(int balance, {bool withPrefix = true}) =>
      NumberFormat.currency(
        locale: _locale,
        decimalDigits: 0,
        symbol: withPrefix ? 'Rp ' : '',
      ).format(balance).replaceFirst('-', '- ');
}
