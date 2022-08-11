class StatusKawin{
  static final List<String> cities = [
    '1. Belum Kawin',
    '2. Kawin',
    '3. Cerai Hidup',
    '4. Cerai Mati'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}