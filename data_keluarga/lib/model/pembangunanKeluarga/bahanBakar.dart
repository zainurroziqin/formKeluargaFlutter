class BahanBakar{
  static final List<String> cities = [
    '1. Listrik/Gas',
    '2. Minyak Tanah',
    '3. Arang/Kayu'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}