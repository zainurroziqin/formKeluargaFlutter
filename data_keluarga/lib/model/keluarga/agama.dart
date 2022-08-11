class Agama{
  static final List<String> cities = [
    '1. Islam',
    '2. Kristen',
    '3. Katolik',
    '4. Hindu',
    '5. Budha',
    '6. Konghucu',
    '7. Penghayat Kepercayaan'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}