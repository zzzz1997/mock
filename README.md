A dart library that mimics [mockjs](http://mockjs.com/).

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'package:mock/mock.dart' as mock;

main() {
  for (int i = 0; i < 10; i++) {
    print(mock.boolean(min: 1, max: 10, def: true));
  }
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
