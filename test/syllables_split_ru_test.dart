import 'package:syllables_split_ru/syllables_split_ru.dart';
import 'package:test/test.dart';

void main() {
  group('open syllables', () {
    test('open syllables 1', () {
      expect(splitWord('волокно'), equals(['во', 'ло', 'кно']));
    });

    test('open syllables 2', () {
      expect(splitWord('болото'), equals(['бо', 'ло', 'то']));
    });
  });

  group('closed syllables', () {
    test('closed syllables 1', () {
      expect(splitWord('гвоздь'), equals(['гвоздь']));
    });

    test('closed syllables 2', () {
      expect(splitWord('голубь'), equals(['го', 'лубь']));
    });
  });

  group('sonorants', () {
    test('sonorants 1', () {
      expect(splitWord('зеркало'), equals(['зер', 'ка', 'ло']));
    });

    test('sonorants 2', () {
      expect(splitWord('болтик'), equals(['бол', 'тик']));
    });
    test('sonorants 3', () {
      expect(splitWord('сарайчик'), equals(['са', 'рай', 'чик']));
    });
    test('sonorants 4', () {
      expect(splitWord('кланяться'), equals(['кла', 'ня', 'ться']));
    });
  });

  group('general', () {
    test('general 1', () {
      expect(splitWord('соловьиный'), equals(['со', 'ловь', 'и', 'ный']));
    });
    test('general 3', () {
      expect(splitWord('создание'), equals(['со', 'зда', 'ни', 'е']));
    });
  });
}
