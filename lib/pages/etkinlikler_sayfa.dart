import 'package:flutter/material.dart';
import 'package:kamp/pages/aktif_etkinlik.dart';
import 'package:kamp/pages/ana_sayfa.dart';
import 'package:kamp/pages/event_ekle.dart';
import 'package:kamp/pages/yerler_sayfa.dart';

class Etkinlikler_page extends StatefulWidget {
  const Etkinlikler_page({super.key});

  @override
  State<Etkinlikler_page> createState() => _Etkinlikler_pageState();
}

class _Etkinlikler_pageState extends State<Etkinlikler_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Transform.translate(
          offset: Offset(15, 0),
          child: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Ana_Pages()),
              );
            },
            icon:
                const Icon(Icons.arrow_back_ios, color: Colors.grey, size: 20),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.maybePop(context);
            },
            icon: const Icon(Icons.notifications_active,
                color: Colors.deepOrangeAccent, size: 25),
          ),
          SizedBox(
            width: 15,
          ),
        ],
        backgroundColor: Colors.white,
        title: Text('ETKİNLİKLER LİSTESİ'),
        titleSpacing: -30,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.blueGrey,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.plus_one,
                        color: Colors.green,
                      ),
                      Text(
                        'AKTİF ETKİNLİKLER',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Aktif_Pages()),
                        );
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.black45,
                          foregroundColor: Colors.white),
                      child: Text('RİDO CAMPİNG’TE 3 GECE')),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.blueGrey,
                      ),
                      Text(
                        'GEÇMİŞ ETKİNLİKLER',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('Geçmiş Etkinlik Bulunamadı...'))
                ],
              ),
            ),
          ),
          BottomNavigation(),
        ],
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
              color: const Color(0xFF767345),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Event_ekle_pages()),
                );
              },
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
              color: const Color(0xFF23DB4F),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
