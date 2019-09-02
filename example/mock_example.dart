import 'package:mock/mock.dart' as mock;

main() {
  for (int i = 0; i < 10; i++) {
    print(mock.boolean(min: 1, max: 10, def: true));
  }
}
