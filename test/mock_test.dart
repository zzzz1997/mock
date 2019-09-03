import 'package:dart_mock/dart_mock.dart' as mock;
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('First Test', () {
      expect(mock.boolean(), isTrue);
    });
  });
}
