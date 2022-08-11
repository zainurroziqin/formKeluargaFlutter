class SumberAir{
  static final List<String> cities = [
    '1. Air Kemasan/Isi ulang',
    '2. Ledeng/PAM',
    '3. Sumur Bor',
    '4. Sumur terlindung',
    '5. Sumur Tidak Terlindung',
    '6. Air permukaan(Sungai, Danau, dll',
    '7. Air hujan'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}