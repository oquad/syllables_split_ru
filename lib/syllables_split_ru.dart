/// Splits words in a sentence into syllables with [separator].
List<String> split(String sentence, {String separator = '-'}) {
  final words = sentence.split(' ');
  return words.map((word) => splitWord(word).join(separator)).toList();
}

/// Splits a word into a list of syllables.
List<String> splitWord(String word) {
  const vowels = 'аеёиоуыэюя';
  const appendage = 'йьъ';
  const consonants = 'бвгджзйклмнпрстфхцчшщьъ';
  const sonorants = 'лмнр';

  RegExp syllableRegexp = RegExp('[$consonants]*[$vowels]([$consonants]*\$)?');

  final syllables =
      syllableRegexp.allMatches(word).map((match) => match.group(0)!).toList();

  // Если сонорный согласный находится НЕ между двумя гласными, то он отходит к предыдущему слогу.
  // Буквы «й», «ь», «ъ» всегда отходят к предыдущему слогу вместе с предыдущими буквами.
  // Кроме последнего "ться".
  for (int i = 1; i < syllables.length; i++) {
    final match =
        RegExp('^[$consonants]*[$appendage]').firstMatch(syllables[i]);
    if (match != null && syllables[i] != 'ться') {
      syllables[i - 1] += match.group(0)!;
      syllables[i] = syllables[i].substring(match.group(0)!.length);
    } else if (sonorants.contains(syllables[i][0]) &&
        !vowels.contains(syllables[i][1])) {
      syllables[i - 1] += syllables[i][0];
      syllables[i] = syllables[i].substring(1);
    }
  }

  return syllables;
}
