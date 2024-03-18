import 'package:flutter/material.dart';
import 'package:kamp/pages/ana_sayfa.dart';
import 'package:kamp/pages/etkinlikler_sayfa.dart';
import 'package:kamp/pages/yerler_sayfa.dart';

class Event_ekle_pages extends StatefulWidget {
  const Event_ekle_pages({super.key});

  @override
  State<Event_ekle_pages> createState() => Event_ekle_pagesState();
}

class Event_ekle_pagesState extends State<Event_ekle_pages> {
  var categories = [
    'Kamp',
    'Doğa Yürüyüşü',
    'Dağcılık',
    'Bisiklet',
    'Fotoğrafçılık',
    'Yelken',
    'Kano',
    'Yamaç Paraşütü',
    'Sörf',
    'Kaya Tırmanışı',
    'Kış Sporları',
    'Diğer'
  ];
  var categori;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 30,
                      ),
                      const Center(
                        child: Text(
                          'ETKİNLİK OLUŞTUR',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF767345),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.app_registration_sharp,
                              color: Color(0xFF767345)),
                          SizedBox(width: 5),
                          Text(
                            'Etkinlik Adı:',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF767345),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          filled: true,
                          fillColor: const Color(0xFFE6E6E6),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.calendar_month, color: Color(0xFF767345)),
                          SizedBox(width: 5),
                          Text(
                            'Türü:',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF767345),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFE6E6E6),
                        ),
                        child: DropdownButton(
                          style: const TextStyle(
                              color: Color(0xFF767345), fontSize: 15),
                          underline: Container(),
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 10),
                          isExpanded: true,
                          value: categori,
                          items: [
                            for (final item in categories)
                              DropdownMenuItem(
                                value: item,
                                child: Text(item),
                              ),
                          ],
                          onChanged: (value) {
                            if (value == null) {
                              return;
                            }
                            setState(() {
                              categori = value;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.place, color: Color(0xFF767345)),
                          SizedBox(width: 5),
                          Text(
                            'Yeri:',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF767345),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          filled: true,
                          fillColor: const Color(0xFFE6E6E6),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.calendar_month, color: Color(0xFF767345)),
                          SizedBox(width: 5),
                          Text(
                            'Tarihi:',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF767345),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          filled: true,
                          fillColor: const Color(0xFFE6E6E6),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.person_2, color: Color(0xFF767345)),
                          SizedBox(width: 5),
                          Text(
                            'Kişi Sayısı:',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF767345),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          filled: true,
                          fillColor: const Color(0xFFE6E6E6),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.my_library_books_rounded,
                              color: Color(0xFF767345)),
                          SizedBox(width: 5),
                          Text(
                            'Açıklama Giriniz:',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF767345),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      SizedBox(
                        height: 150,
                        child: TextField(
                          maxLines: null,
                          expands: true,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            hintStyle: TextStyle(color: Colors.grey.shade600),
                            filled: true,
                            fillColor: const Color(0xFFE6E6E6),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const BottomNavigation(),
          ],
        ),
      ),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    super.key,
  });

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.add),
              iconSize: 30,
              color: const Color(0xFF23DB4F),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.home),
              iconSize: 30,
              color: const Color(0xFF767345),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Ana_Pages()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.map_rounded),
              iconSize: 30,
              color: const Color(0xFF767345),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Yerler_page()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.campaign),
              iconSize: 30,
              color: const Color(0xFF767345),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Etkinlikler_page()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
