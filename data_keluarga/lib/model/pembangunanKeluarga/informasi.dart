class Informasi{
  static final List<String> cities = [
    '1. Pejabat Pemerintah',
    '2. Petugas Keluarga Berencana(PKB/LB/Petugas Lapangan KB Lainnya',
    '3. Guru/Dosen',
    '4. Tokoh Agama',
    '5. Tokoh Masyarakat'
    '6. Dokter',
    '7. Bidan/Perawat',
    '8. Perangkat Desa/Kelurahan',
    '9. Kader/IMP',
    '10. Lainnya'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}