class JenisKelamin{
  static final List<String> cities = [
    '1. Laki-laki',
    '2. Perempuan'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}