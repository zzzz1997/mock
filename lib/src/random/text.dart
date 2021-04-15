part of 'package:dart_mock/src/mock_base.dart';

/// return a random word.
///
/// while [max] is null, [min] is the length of result.
/// or the length is random between [min] to [max].
String word({int min = 3, int? max = 10}) {
  return string(pools: [lower], min: min, max: max);
}

/// return a random title, all word capitalized.
///
/// while [max] is null, [min] is the length of result.
/// or the length is random between [min] to [max].
String title({int min = 3, int? max = 7}) {
  final length = max == null ? min : integer(min: min, max: max);
  final list = [];
  for (var i = 0; i < length; i++) {
    list.add(capitalize(word()));
  }
  return list.join(' ');
}

/// return a random sentence, the first word capitalized.
///
/// while [max] is null, [min] is the length of result.
/// or the length is random between [min] to [max].
String sentence({int min = 12, int? max = 18}) {
  final length = max == null ? min : integer(min: min, max: max);
  final list = [];
  for (var i = 0; i < length; i++) {
    list.add(i == 0 ? capitalize(word()) : word());
  }
  return '${list.join(' ')}.';
}

/// return a random paragraph.
///
/// while [max] is null, [min] is the length of result.
/// or the length is random between [min] to [max].
String paragraph({int min = 3, int? max = 7}) {
  final length = max == null ? min : integer(min: min, max: max);
  final list = [];
  for (var i = 0; i < length; i++) {
    list.add(sentence());
  }
  return list.join(' ');
}

/// return a random chinese word.
///
/// default [pool] is commonly used 500 Chinese characters.
/// you can provide [pool] string to override default.
/// while [max] is null, [min] is the length of result.
/// or the length is random between [min] to [max].
String cword({String pool = chineseCharacters, int min = 1, int? max}) {
  return string(pools: [], self: pool, min: min, max: max);
}

/// return a random chinese title.
///
/// while [max] is null, [min] is the length of result.
/// or the length is random between [min] to [max].
String ctitle({int min = 3, int? max = 7}) {
  final length = max == null ? min : integer(min: min, max: max);
  final stringBuffer = StringBuffer();
  for (var i = 0; i < length; i++) {
    stringBuffer.write(cword());
  }
  return stringBuffer.toString();
}

/// return a random chinese sentence.
///
/// while [max] is null, [min] is the length of result.
/// or the length is random between [min] to [max].
String csentence({int min = 12, int? max = 18}) {
  return '${ctitle(min: min, max: max)}。';
}

/// return a random chinese paragraph.
///
/// while [max] is null, [min] is the length of result.
/// or the length is random between [min] to [max].
String cparagraph({int min = 3, int? max = 7}) {
  final length = max == null ? min : integer(min: min, max: max);
  final list = [];
  for (var i = 0; i < length; i++) {
    list.add(csentence());
  }
  return list.join('');
}
