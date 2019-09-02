part of 'package:mock/src/mock_base.dart';

/// capitalize the first letter of the word.
String capitalize(String string) {
  return string[0].toUpperCase() + string.substring(1);
}

/// random pick a object from list.
T pick<T>(List<T> list) {
  return list[integer(max: list.length - 1)];
}
