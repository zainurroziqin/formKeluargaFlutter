class Alasan{
  static final List<String> cities = [
    '1. Ingin Hamil/Anak',
    '2. Tidak tahu tentang KB',
    '3. Alasan Kesehatan',
    '4. Efek Samping'
    '5. Tempat Pelayanan Jauh',
    '6. Alat/Obat/Cara KB tidak tersedia',
    '7. Biaya Mahal',
    '8. Tidak ada Alat/Obat/Cara KB yang cocok',
    '9. Suami/Keluarga menolak',
    '10. Alasan Agama',
    '11. Suami tinggal jauh/Jarang berhubungan',
    '12. Tidak ada pelayanan KB',
    '13. Infertilitas/Menopause'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}