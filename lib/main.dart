import 'package:flutter/material.dart';
import 'package:projek_sesi5/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Daftar Kriminal',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.indigo,
          ),
        ),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Daftar Kriminal Berbahaya"),
          ),
          backgroundColor: Colors.indigoAccent,
          body: const HomePage(),
        ));
  }
}
