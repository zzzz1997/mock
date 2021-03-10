part of 'package:dart_mock/src/mock_base.dart';

/// return a random firstName.
String first() {
  return pick(firstNames);
}

/// return a random lastName.
String last() {
  return pick(lastNames);
}

/// return a random english name.
///
/// while [middle] is true, there will provide a middle name.
String name({bool middle = false}) {
  var length = middle ? 3 : 2;
  var list = List(length);
  for (var i = 0; i < length; i++) {
    list[i] = i == length - 1 ? last() : first();
  }
  return list.join(' ');
}

/// return a random chinses firstName.
String cfirst() {
  return pick(cfirstNames);
}

/// return a random chinses lastName.
String clast() {
  return pick(clastNames);
}

/// return a random chinses name.
String cname() {
  return pick(clastNames) + pick(cfirstNames);
}
