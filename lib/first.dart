import 'package:flutter/material.dart';

class fi extends StatefulWidget {

  @override
  State<fi> createState() => _fiState();
}

class _fiState extends State<fi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAC7D88),
        title: Text("love nvvi",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white)),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(Icons.share_rounded, size: 24),
          ),
          Container(
              margin: EdgeInsets.all(10),
              child: Icon(
                Icons.more_vert,
                size: 24,
              ))
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(color: Color(0xFFDDDDDD)),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
              child: ListTile(
                // tileColor: Color(0xFFF6FBF4),
                leading: Container(
                  height: 40,
                  width: 40,
                  //decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
                  child: Image(
                    image: AssetImage("imaage1/img_1.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                title: Text("Subhkamna Shyari",
                    style: TextStyle(
                        color: Color(0xFFAC7D88),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
              child: ListTile(
                // tileColor: Color(0xFFF6FBF4),
                leading: Container(
                  height: 40,
                  width: 40,
                  //decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
                  child: Image(
                      image: AssetImage("imaage1/img_3.png"), fit: BoxFit.fill),
                ),
                title: Text("Dosti Shayari",
                    style: TextStyle(
                        color: Color(0xFFAC7D88),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
              child: ListTile(
                // tileColor: Color(0xFFF6FBF4),
                leading: Container(
                  height: 40,
                  width: 40,
                  //decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
                  child: Image(
                      image: AssetImage("imaage1/img_4.png"), fit: BoxFit.fill),
                ),
                title: Text("Majedar  Shayari",
                    style: TextStyle(
                        color: Color(0xFFAC7D88),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
              child: ListTile(
                // tileColor: Color(0xFFF6FBF4),
                leading: Container(
                  height: 40,
                  width: 40,
                  //decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
                  child: Image(
                      image: AssetImage("imaage1/img_5.png"), fit: BoxFit.fill),
                ),
                title: Text("God Shayari",
                    style: TextStyle(
                        color: Color(0xFFAC7D88),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
              child: ListTile(
                // tileColor: Color(0xFFF6FBF4),
                leading: Container(
                  height: 40,
                  width: 40,
                  //decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
                  child: Image(
                      image: AssetImage("imaage1/img_6.png"), fit: BoxFit.fill),
                ),
                title: Text("Inspiration Shayari",
                    style: TextStyle(
                        color: Color(0xFFAC7D88),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
              child: ListTile(
                // tileColor: Color(0xFFF6FBF4),
                leading: Container(
                  height: 40,
                  width: 40,
                  //decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
                  child: Image(
                      image: AssetImage("imaage1/img_7.png"), fit: BoxFit.fill),
                ),
                title: Text("life Shayari",
                    style: TextStyle(
                        color: Color(0xFFAC7D88),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
              child: ListTile(
                // tileColor: Color(0xFFF6FBF4),
                leading: Container(
                  height: 40,
                  width: 40,
                  //decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
                  child: Image(
                      image: AssetImage("imaage1/img_8.png"), fit: BoxFit.fill),
                ),
                title: Text("Mohabbat Shayari",
                    style: TextStyle(
                        color: Color(0xFFAC7D88),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
              child: ListTile(
                // tileColor: Color(0xFFF6FBF4),
                leading: Container(
                  height: 40,
                  width: 40,
                  //decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
                  child: Image(
                      image: AssetImage("imaage1/img_9.png"), fit: BoxFit.fill),
                ),
                title: Text("Yadde Shayari",
                    style: TextStyle(
                        color: Color(0xFFAC7D88),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
              child: ListTile(
                // tileColor: Color(0xFFF6FBF4),
                leading: Container(
                  height: 40,
                  width: 40,
                  //decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
                  child: Image(
                      image: AssetImage("imaage1/img_10.png"),
                      fit: BoxFit.fill),
                ),
                title: Text("love Shayari",
                    style: TextStyle(
                        color: Color(0xFFAC7D88),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
              child: ListTile(
                // tileColor: Color(0xFFF6FBF4),
                leading: Container(
                  height: 40,
                  width: 40,
                  //decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
                  child: Image(
                      image: AssetImage("imaage1/img_11.png"),
                      fit: BoxFit.fill),
                ),
                title: Text("Sad Shayari",
                    style: TextStyle(
                        color: Color(0xFFAC7D88),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
              child: ListTile(
                // tileColor: Color(0xFFF6FBF4),
                leading: Container(
                  height: 40,
                  width: 40,
                  //decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
                  child: Image(
                      image: AssetImage("imaage1/img_12.png"),
                      fit: BoxFit.fill),
                ),
                title: Text("Bewafa Shayari",
                    style: TextStyle(
                        color: Color(0xFFAC7D88),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
              child: ListTile(
                // tileColor: Color(0xFFF6FBF4),
                leading: Container(
                  height: 40,
                  width: 40,
                  //decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
                  child: Image(
                      image: AssetImage("imaage1/img_13.png"),
                      fit: BoxFit.fill),
                ),
                title: Text("Birthday Shayari",
                    style: TextStyle(
                        color: Color(0xFFAC7D88),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
              child: ListTile(
                // tileColor: Color(0xFFF6FBF4),
                leading: Container(
                  height: 40,
                  width: 40,
                  //decoration: BoxDecoration(color: Color(0xFFF6FBF4)),
                  child: Image(
                      image: AssetImage("imaage1/img_14.png"),
                      fit: BoxFit.fill),
                ),
                title: Text("Holi Shayari",
                    style: TextStyle(
                        color: Color(0xFFAC7D88),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),

        // child: ListView.builder(itemCount: 10,itemBuilder: (context, index) {
        //   return ListTile();
        // },
        // ),
      ),
    );
  }
}
