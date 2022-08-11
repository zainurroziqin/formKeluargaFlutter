class HubunganKeluarga{
  static final List<String> cities = [
    '1. Kepala Keluarga',
    '2. Istri',
    '3. Anak',
    '4. Lainnya'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}