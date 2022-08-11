class Keberadaan{
  static final List<String> cities = [
    '1. Di Dalam Rumah',
    '2. Di Luar Rumah',
    '3. Di Luar Negeri'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}