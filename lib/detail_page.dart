import 'package:flutter/material.dart';
import 'package:projek_sesi5/criminal.dart';

class DetailPages extends StatelessWidget {
  final Criminal criminal;

  const DetailPages({Key? key, required this.criminal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Kriminal Berbahaya')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                criminal.nama,
                style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Image(image: AssetImage(criminal.gambar)),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            textProfile("Name", criminal.nama),
            textProfile("Hobby", criminal.kejahatan),
            textProfile("Address", criminal.hukuman),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
                'Deskripsi',
                style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              criminal.detail,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              criminal.kejahatan,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              criminal.hukuman,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigoAccent,
    );
  }

  Widget btnprofile(IconData icon, Color color, String url) {
    return Container();
  }

  Widget textProfile(String label, String value) {
    return Container();
  }
}
