

import 'package:flutter/material.dart';
import 'package:kamp/database/comment_event01.dart';
import 'package:kamp/pages/etkinlikler_sayfa.dart';





class Aktif_Pages extends StatelessWidget{
  const Aktif_Pages();
  
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
                  MaterialPageRoute(builder: (context) => const Etkinlikler_page()),
                );
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.grey, size: 20),
        ),
  ),
 
        actions: [
          IconButton(
            onPressed: () {
              Navigator.maybePop(context);
            },
            icon: const Icon(Icons.arrow_forward_ios,
                color: Colors.grey, size: 20),
          ),
          SizedBox(
            width: 15,
          ),
        ],
        backgroundColor: Colors.white,
        title: Text('RİDO CAMPİNG’TE 3 GECE'),
         titleSpacing: -30,
  centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.blueGrey,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TestMe(),
      ),
  );
  }
}
