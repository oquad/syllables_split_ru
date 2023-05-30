import 'package:syllables_split_ru/syllables_split_ru.dart' as syllables_split_ru;

void main(List<String> arguments) {
  for (final argument in arguments) {
    print(syllables_split_ru.split(argument).join(' '));
  }
}
