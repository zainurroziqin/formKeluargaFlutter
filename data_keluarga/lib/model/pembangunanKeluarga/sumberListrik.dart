class SumberListrik{
  static final List<String> cities = [
    '1. Listrik Pribadi 900 Watt',
    '2. Listrik Pribadi > 900 Watt',
    '3. Genset/Solar cell',
    '4. Listrik Bersama',
    '5. Non Listrik'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}