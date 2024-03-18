import 'package:flutter/material.dart';
import 'package:kamp/pages/ana_sayfa.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*var sayfaList = [
    const Event_ekle_pages(),
    const Ana_Pages(),
    const Ayarlar_pages(),
  ];
  int secilen_indeks = 1;*/
  @override
  Widget build(BuildContext context) {
    return const Ana_Pages();
  }
}
