class JenisLantai{
  static final List<String> cities = [
    '1. Keramik/Granit/Marmer/Ubin/Tegel/Teraso',
    '2. Semen',
    '3. Kayu/Papan',
    '4. Bambu',
    '5. Tanah'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}