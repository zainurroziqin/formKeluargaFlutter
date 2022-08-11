class TidakHamil{
  static final List<String> cities = [
    '1. Ya, Ingin anak segera',
    '2. Ya, Ingin anak nanti/kemudian',
    '3. Tidak ingin anak lagi',
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }

}