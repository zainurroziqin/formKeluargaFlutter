class Pendidikan{
  static final List<String> cities = [
    '1. Tidak/Belum Sekolah',
    '2. Tidak Tamad SD/Sederajat',
    '3. Masih SD/Sederajat',
    '4. Tamat SD/Sederajat',
    '5. Masih SLTP/Sederajat',
    '6. Tamat SLTP/Sederajat',
    '7. Masih SLTA/Sederajat',
    '8. Tamat SLTA/Sederajat',
    '9. Masih PT/Akademi',
    '10. Tamat PT/Akademi',
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}