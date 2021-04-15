part of 'package:dart_mock/src/mock_base.dart';

/// return a hex color string, example: FFAABBCC.
///
/// [alpha] determines whether or not to add alpha string 'FF'.
String hex({bool alpha = true}) {
  final hex = string(pools: [number], self: 'ABCDEF', min: 6);
  return '${alpha ? 'FF' : ''}$hex';
}

/// return a 16 radix int, example: 4285062059.
///
/// Apply to 'Color' constructor for flutter.
int hexValue() {
  return int.parse(hex(), radix: 16);
}
