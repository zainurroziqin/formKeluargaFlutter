class YaTidak{
  static final List<String> cities = [
    '1. Ya',
    '2. Tidak',
    '3. Tidak Berlaku'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}