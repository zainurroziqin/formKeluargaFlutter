class JenisKB{
  static final List<String> cities = [
    '1. MOW/Steril Wanita',
    '2. MOP/Steril Pria',
    '3. IUD/Spiral/AKDR',
    '4. Implant/Susuk'
    '5. Suntik',
    '6. Pil',
    '7. Kondom',
    '8. MAL',
    '9. Tradisional',
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}