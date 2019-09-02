part of 'package:mock/src/mock_base.dart';

/// return a random guid.
String guid() {
  String self = 'abcdefABCDEF1234567890';
  return '${string(pools: [], self: self, min: 8)}-${string(pools: [], self: self, min: 4)}-${string(pools: [], self: self, min: 4)}-${string(pools: [], self: self, min: 12)}';
}

/// return a random chinese idCard.
String idCard() {
  return '${pick(provincesData.keys.toList())}${dateTimeString(end: DateTime.now(), format: 'yyyyMMdd')}${integer(max: 999)}${character(pools: [number], self: 'X')}';
}
