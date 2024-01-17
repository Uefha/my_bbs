// ignore: camel_case_types
class resep {
  String name, htm, tutorial, image;

  resep(
      {required this.name,
      required this.htm,
      required this.tutorial,
      required this.image});
}

List<resep> dataResep = [
  resep(
      name: 'PENDIDIKAN',
      htm: 'Mewujudkan santri milenial yang ber akhlakul karimah',
      tutorial: '1. Ust. Abbas Hasbulloh      hubungi : +62 821-4270-3594',
      image: 'assets/logo.jpeg'),
  resep(
      name: 'KEAMANAN',
      htm: 'Mewujudkan lingkungan yang tertib dan aman',
      tutorial: '1. SUPRAYETNO                hubungi : +62 858-5924-9923',
      image: 'assets/icon.png'),
  resep(
      name: 'KEBERSIHAN',
      htm: 'Mewujudkan lingkungan pendidikan yang ASRI',
      tutorial: '1. Irvan Ariyatus Solihin    hubungi : +62 821-2216-4708',
      image: 'assets/kebersihan.jpeg'),
  resep(
      name: 'SENI & DAKWAH',
      htm: 'Melatih karakter Santri dengan dasar kesenian Islami',
      tutorial: '1 Waliyudin                  hubungi : +62 895-4119-66012',
      image: 'assets/senda.jpeg'),
  resep(
      name: 'KESEHATAN',
      htm:
          'Memelihara dan meningkatkan kesehatan santri beserta lingkungan nya',
      tutorial: '1. Nizar Aditya Arifine      hubingi : +62 815-5398-0278',
      image: 'assets/kesehatan.jpeg'),
];
