## Binary

Use `dart run bin/syllables_split_ru.dart "мама мыла раму"` to get "ма-ма мы-ла ра-му".

## Usage
```dart
import 'package:syllables_split_ru/syllables_split_ru.dart' as syllables;

void main() {
  print('syllables: ${syllables.splitWord('привет')}'); // syllables: [при, вет]
  print('sentence: ${syllables.split('мама мыла раму')}'); // sentence: "ма-ма мы-ла ра-му"
  print('sentence: ${syllables.split('мама мыла раму', separator: '^')}'); // sentence: "ма^ма мы^ла ра^му"
}
```

## Tests
Use `dart test` to test.

## License
We use the MIT license. Please check the LICENSE file for more details.
