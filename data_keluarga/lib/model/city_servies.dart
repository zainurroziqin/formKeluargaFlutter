class CitiesService {
  static final List<String> cities = [
    '1 - Nanggroe Aceh Darussalam',
    '2 - Sumatera Barat',
    '3 - Sumatera Utara',
    '4 - Sumatera Selatan',
    '5 - Lampung',
    '6 - Riau',
    '7 - Kepulauan Riau',
    '8 - Jambi',
    '9 - Kepulauan Bangka Belitung',
    '10 - Bengkulu',
    '11 - DKI Jakarta',
    '12 - Banten',
    '13 - Jawa Barat',
    '14 - Jawa Tengah',
    '15 - Jawa Timur',
    '16 - DIY Yogyakarta',
    '17 - Bali',
    '18 - Nusa Tenggara Barat',
    '19 - Nusa Tenggara Timur',
    '20 - Kalimantan Barat',
    '21 - Kalimantan Selatan',
    '22 - Kalimantan Tengah',
    '23 - Kalimantan Timur',
    '24 - Kalimantan Utara',
    '25 - Sulawesi Barat',
    '26 - Sulawesi Tenggara',
    '27 - Sulawesi Selatan',
    '28 - Sulawesi Tengah',
    '29 - Sulawesi Utara',
    '30 - Gorontalo',
    '31 - Maluku',
    '32 - Maluku Utara',
    '33 - Papua',
    '34 - Papua Barat'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(cities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}
