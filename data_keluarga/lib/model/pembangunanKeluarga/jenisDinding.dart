class JenisDinding{
  static final List<String> cities = [
    '1. Tembok',
    '2. Kayu/Papan',
    '3. Seng',
    '4. Bambu'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}