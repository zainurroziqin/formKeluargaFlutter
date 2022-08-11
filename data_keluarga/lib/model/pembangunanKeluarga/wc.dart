class WC{
  static final List<String> cities = [
    '1. Ya, Dengan septic tank',
    '2. Ya, Tanpa septic tank',
    '3. Tidak, Jamban umum/Bersama'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}