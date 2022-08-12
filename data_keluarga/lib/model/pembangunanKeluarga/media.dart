class Media{
  static final List<String> cities = [
    '1. Koran/Majalah/Tabloid',
    '2. Televisi/Radio/Videotron',
    '3. Facebook/Instagram/Twitter/Whatsapp/Youtube/Blog/Website',
    '4. Seminar/Pengajian/Ibadat/Workshop Diseminasi/ Pertemuan Kelompok Kegiatan/ Konseling/Pameran',
    '5. Leaflet/Lembar Balik/ Poster/Spanduk/Banner/ Umbul-umbul/ Billboard/ Baliho/ Mural Souvenir'
    '6. Wayang/Tarian/Pentas Budaya Lokal'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}