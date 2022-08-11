class JKN{
  static final List<String> cities = [
    '1. BPJS-PBI/Jamkesmas/Jamkesda',
    '2. BPJS-Non PBI',
    '3. Swasta',
    '4. Tidak Memiliki'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}