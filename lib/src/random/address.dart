part of 'package:dart_mock/src/mock_base.dart';

/// return a random chinese region.
String region() {
  return pick(regions);
}

/// return a random chinese provice.
String provice() {
  return provincesData[pick(provincesData.keys.toList())]!;
}

/// return a random chinese city.
///
/// while [splice] is true, it will return '[provice] [city]'.
String city({bool splice = false}) {
  final provinceKey = pick(provincesData.keys.toList());
  final city =
      citiesData[provinceKey][pick(citiesData[provinceKey].keys.toList())];
  return splice ? '${provincesData[provinceKey]} $city' : city;
}

/// return a random chinese county.
///
/// while [splice] is true, it will return '[provice] [city] [county]'.
String county({bool splice = false}) {
  final provinceKey = pick(provincesData.keys.toList());
  final cityKey = pick(citiesData[provinceKey].keys.toList());
  final county = citiesData[cityKey][pick(citiesData[cityKey].keys.toList())];
  return splice
      ? '${provincesData[provinceKey]} ${citiesData[provinceKey][cityKey]} $county'
      : county;
}

/// return a random zip.
///
/// [length] is the length of zip.
String zip({int length = 6}) {
  final stringBuffer = StringBuffer();
  for (var i = 0; i < length; i++) {
    stringBuffer.write(integer(max: 9));
  }
  return stringBuffer.toString();
}
