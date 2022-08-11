class YaHamil{
  static final List<String> cities = [
    '1. Ya, Ingin hamil saat itu',
    '2. Ingin Hamil nanti/kemudian',
    '3. Tidak ingin anak lagi',
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }

}