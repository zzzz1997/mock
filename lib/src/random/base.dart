part of 'package:dart_mock/src/mock_base.dart';

/// [min]/[max] probability will return [def].
bool boolean({int min = 5, int max = 10, bool def = true}) {
  return (_random.nextDouble() < min / max) ? def : !def;
}

/// return an integer between [min] to [max].
///
/// [min], [max] and [max]-[min] should between -9223372036854775807 to 9223372036854775807.
int integer({int min = 0, int max = maxInteger}) {
  return (_random.nextDouble() * (max - min) + min).round();
}

/// return a double between [min] to [max].
///
/// [decimal] is double retain decimal places.
///
/// because of the naming conflict, I added an 'R' letter.
double doubleR({int min = 0, int max = 1, int decimal = -1}) {
  double result = _random.nextDouble() * (max - min) + min;
  return decimal < 0 ? result : double.parse(result.toStringAsFixed(decimal));
}

/// return a character from parameter.
///
/// default [pools] is [lower] and [upper].
/// you also can provide [self] string.
String character(
    {List<String> pools = const [lower, upper], String self = ''}) {
  String pool = pools.join('') + self;
  return pool[integer(max: pool.length - 1)];
}

/// return a string with random character.
///
/// default [pools] is [lower], [upper], [number] and [symbol].
/// you also can provide [self] string.
/// while [max] is null, [min] is the length of result.
/// or the length is random between [min] to [max].
String string(
    {List<String> pools = const [lower, upper, number, symbol],
    String self = '',
    int min = 5,
    int max}) {
  String pool = pools.join('') + self;
  int length = min;
  if (max != null) {
    length = integer(min: min, max: max);
  }
  StringBuffer stringBuffer = StringBuffer();
  for (int i = 0; i < length; i++) {
    stringBuffer.write(pool[integer(max: pool.length - 1)]);
  }
  return stringBuffer.toString();
}
