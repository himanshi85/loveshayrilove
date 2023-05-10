import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:loveshayri/second.dart';
import 'package:permission_handler/permission_handler.dart';

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  List category = [
    "Shubhkamna Shayri",
    "Dosti Shayari",
    "Funny  Shayari",
    "God Shayari",
    "Inspiration Shayari",
    "life Shayari",
    "Mohabbat Shayari",
    "Yadde Shayari",
    "love Shayari",
    "Sad Shayari",
    "Bewafa Shayari",
    "Birthday Shayari",
    "Holi Shayari"
  ];
  List categoryimage = [
    "img_20.png",
    "img_3.png",
    "img_4.png",
    "img_5.png",
    "img_6.png",
    "img_7.png",
    "img_8.png",
    "img_9.png",
    "img_10.png",
    "img_11.png",
    "img_12.png",
    "img_13.png",
    "img_14.png",
  ];
  List colorList=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    colorList= List.filled(category.length, Colors.white);
    forpermission();
  }
  forpermission() async {
    var status = await Permission.storage.status;
    if (status.isDenied) {
      await [
        Permission.storage,
      ].request();
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAC7D88),
        title: Text("Love Shayari",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white)),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(Icons.share_rounded, size: 29),
          ),
          Container(
              margin: EdgeInsets.all(10),
              child: Icon(
                Icons.more_vert,
                size: 30,
              ))
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(color: Color(0xFFDDDDDD)),
        child: ListView.builder(
          itemCount: category.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(color: Color(0xFFD4D4)),
              child: CustomCard(
                color: colorList[index],
                borderRadius: 20,
                height: 60,
                //shadowColor: Color(0xFFD4D4),
                elevation: 10,
                //splashColor: Color(0xFFD4D4),

                //color: Colors.white,
                //hoverColor: Color(0xFFEFDAD7),

                  child: Listener(
                    onPointerDown: (event) {
                    setState(() {
                      colorList[index]=Color(0xFFEDE4E0);
                    });
                  },onPointerUp: (event) {
                    setState(() {
                      colorList[index]=Colors.white;
                    });
                  },
                    child: ListTile(

                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return se(category, index, categoryimage);
                          },
                        ));
                      },
                      leading: Container(
                        height: 40,
                        width: 40,
                        child: Image(
                          image: AssetImage("imaage1/${categoryimage[index]}"),
                          fit: BoxFit.fill,
                          // child: Image(image: AssetImage("imaage1/${categoryimage[index]}"), fit:BoxFit.fill ,
                        ),
                      ),
                      title: Text("${category[index]}",
                          maxLines: 2,
                          style: TextStyle(
                              color: Color(0xFFAC7D88),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              );

          },
        ),
      ),
    );
  }
}
