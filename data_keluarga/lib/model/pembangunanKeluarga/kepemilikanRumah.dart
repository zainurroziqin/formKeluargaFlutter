class KepemilikanRumah{
  static final List<String> cities = [
    '1. Milik Sendiri',
    '2. Kontrak/Sewa',
    '3. Bebas Sewa',
    '4. Menumpang',
    '5. Dinas'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}