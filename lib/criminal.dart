class Criminal {
  String nama;
  String kejahatan;
  String gambar;
  String hukuman;
  String detail;

  Criminal({
    required this.nama,
    required this.kejahatan,
    required this.gambar,
    required this.hukuman,
    required this.detail,
  });

  static List<Criminal> dummyData = [
    Criminal(
        nama: "Wulan Edreaa",
        kejahatan: "Penggelapan Kuya",
        gambar: 'assets/wulan.JPG',
        hukuman: '1000 Tahun Penjara',
        detail: 'Lahir di Margaasih, 22 September 2002'),
    Criminal(
        nama: "Ferian",
        kejahatan: "Nyolong Domba",
        gambar: 'assets/ferian.jpeg',
        hukuman: '5 Tahun Penjara',
        detail: 'Lahir di Baleendah, 22 September 2002'),
    Criminal(
        nama: "Fakhrijal",
        kejahatan: "Mutilasi Rusbe",
        gambar: 'assets/prof.jpeg',
        hukuman: '5 Tahun Penjara',
        detail: 'Lahir di Baleendah, 22 September 2002'),
    Criminal(
        nama: "Bella",
        kejahatan: "Tukang Ghosting",
        gambar: 'assets/bella.jpeg',
        hukuman: '900 Tahun Penjara',
        detail: 'Lahir di Baleendah, 22 Oktober 2003'),
    Criminal(
        nama: "Alwa",
        kejahatan: "Membunuh Cicak",
        gambar: 'assets/alwa.jpeg',
        hukuman: '2 Tahun Penjara',
        detail: 'Lahir di Kopo, 1 Agustus 2003'),
    Criminal(
        nama: "Rizkita",
        kejahatan: "Mencuri Hati Mu",
        gambar: 'assets/riskita.jpeg',
        hukuman: '100 Tahun Penjara',
        detail: 'Lahir di Sumedang, 9 Mei 2003'),
    Criminal(
        nama: "Amel",
        kejahatan: "Menggoda Kakek-Kakek",
        gambar: 'assets/amel.jpeg',
        hukuman: '9 Tahun Penjara',
        detail: 'Lahir di Soreang, 5 April 2003'),
  ];
}
