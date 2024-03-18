import 'package:flutter/material.dart';
import 'package:kamp/pages/etkinlik_sayfa.dart';
import 'package:kamp/pages/etkinlikler_sayfa.dart';
import 'package:kamp/pages/event_ekle.dart';
import 'package:kamp/pages/yerler_sayfa.dart';

class Ana_Pages extends StatefulWidget {
  const Ana_Pages({super.key});

  @override
  State<Ana_Pages> createState() => _Ana_PagesState();
}

class _Ana_PagesState extends State<Ana_Pages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.menu),
                            iconSize: 40,
                            color: const Color(0xFF767345),
                            onPressed: () {},
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.person_outlined),
                            iconSize: 40,
                            color: const Color(0xFF767345),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "NEREYE ?",
                              style: TextStyle(
                                  color: Color(0xFF767345),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Gidilecek Yerleri Arayın",
                              hintStyle: TextStyle(color: Colors.grey.shade600),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey.shade600,
                              ),
                              filled: true,
                              fillColor: const Color(0xFFE6E6E6),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "ETKİNLİKLER",
                              style: TextStyle(
                                  color: Color(0xFF767345),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 150,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              prototypeItem: const SizedBox(
                                width: 150,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return const EtkinlikWidget();
                              },
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "EN BEĞENİLEN YERLER",
                              style: TextStyle(
                                  color: Color(0xFF767345),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                        ),
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return const FavoriYerlerWidget();
                        },
                      ),
                    ),
                  ],
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
              color: const Color(0xFF23DB4F),
              onPressed: () {},
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

class FavoriYerlerWidget extends StatelessWidget {
  const FavoriYerlerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(14.0),
      child: Card(
        color: Colors.black54,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 15),
                  Icon(Icons.star, color: Colors.yellow, size: 15),
                  Icon(Icons.star, color: Colors.yellow, size: 15),
                  Icon(Icons.star, color: Colors.white, size: 15),
                  Icon(Icons.star, color: Colors.white, size: 15),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rido Camping",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  Text("Kaş/Antalya", style: TextStyle(color: Colors.white)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EtkinlikWidget extends StatelessWidget {
  const EtkinlikWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Etkinlik_Page()),
                );
              },
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(120),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                  border: Border.all(color: Colors.white, width: 2),
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white, width: 2),
                  color: Colors.green,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0, right: 10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Katıl",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
