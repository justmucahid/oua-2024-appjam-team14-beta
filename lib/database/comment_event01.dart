import 'dart:math';
import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';

class TestMe extends StatefulWidget {
  @override
  _TestMeState createState() => _TestMeState();
}

class _TestMeState extends State<TestMe> {
   int? total;
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Ada Selim',
      'pic': 'https://picsum.photos/300/30',
      'message': 'I love to CAMPİNG',
      'date': '2023-03-02 12:00:00'
    },
    {
      'name': 'Can Demir',
      'pic': 'https://picsum.photos/100/10',
      'message': 'Bende Heyecanlıyım',
      'date': '2023-03-02 12:00:00'
    },
    {
      'name': 'Tuna Şubat',
      'pic':  'https://picsum.photos/400/40',
      'message': 'İlk Kez Katılıyorum Heyecanlıyım',
      'date': '2021-01-01 12:00:00'
    },
    {
      'name': 'Can Demir',
      'pic': 'https://picsum.photos/100/10',
       'message': 'Daha Önce Katılanlar +1',
      'date': '2023-03-02 12:00:00'
    },
  ];

  Widget commentChild(data) {
    return ListView(
      children: [
        Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      
                      prototypeItem: const SizedBox(
                        width: 200,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                         padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: const GorselWidget(),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Katılımcılar',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                          ),
                        SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      shrinkWrap: true,
                      prototypeItem: const SizedBox(
                        width: 40,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                         padding: EdgeInsets.symmetric(horizontal: 0.0),
                          child: const ProfilWidget(),
                        );
                      },
                    ),
                                      ),
                        Text('12 Kişi'),
                      ],
                    ),
                  )
                  ]),
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: new BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: CommentBox.commentImageParser(
                          imageURLorPath: data[i]['pic'])),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
              trailing: Text(data[i]['date'], style: TextStyle(fontSize: 10)),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        child: CommentBox(
          userImage: CommentBox.commentImageParser(
              imageURLorPath: 'https://picsum.photos/500/50'),
          child: commentChild(filedata),
          labelText: 'Ne Düsünüyorsun?...',
          errorText: 'Comment cannot be blank',
          withBorder: false,
          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              print(commentController.text);
              setState(() {
                var value = {
                  'name': 'Gökçe Yıldız',
                  'pic':
                      'https://picsum.photos/500/50',
                  'message': commentController.text,
                  'date': '2023-03-02 12:00:00'
                };
                filedata.insert(0, value);
              });
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
        ),
      ),
    );
  }
}


class GorselWidget extends StatelessWidget {
  const GorselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 5,
                spreadRadius: 2,
              ),
            ],
            border: Border.all(color: Colors.white, width: 2),
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          ),
        ),
      ),
    );
  }
}



class ProfilWidget extends StatelessWidget{
  const ProfilWidget();
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Center(
        child: Container(
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
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          ),
        ),
      ),
    );
  }
}
