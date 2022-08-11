class AtapRumah{
  static final List<String> cities = [
    '1. Beton',
    '2. Genteng',
    '3. Asbes/Seng',
    '4. Kayu/Sirap',
    '5. Bambu',
    '6. Jerami/Ijuk/Rumbia/Daun-daunan'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}