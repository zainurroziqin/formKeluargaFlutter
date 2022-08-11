class Pekerjaan{
  static final List<String> cities = [
    '1. Tidak/Belum Bekerja',
    '2. Petani',
    '3. Nelayan',
    '4. Pedagang',
    '5. Pejaban Negara',
    '6. PNS/TNI/POLRI',
    '7. Pegawai Swasta',
    '8. Wiraswasta',
    '9. Pensiunan',
    '10. Pekerja Lepas'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}