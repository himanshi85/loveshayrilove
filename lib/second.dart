import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:loveshayri/modal.dart';
import 'package:loveshayri/third.dart';


class se extends StatefulWidget {
  List category;
  int ind;
  List categoryimg;




  se(this.category, this.ind, this.categoryimg) {

  }

  @override
  State<se> createState() => _seState();
}

class _seState extends State<se> {




   List hovercolor=[];
  List shayri = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.ind == 0 ){
      shayri = modalclass.shubhkamana;
    }
    else if(widget.ind == 1 ){
      shayri = modalclass.dosti;
    }
    else if(widget.ind == 2){
      shayri = modalclass.funny;
    }
    hovercolor = List.filled(widget.category.length, Colors.white);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAC7D88),
        title: Text("${widget.category[widget.ind]}",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.white)),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(Icons.share_rounded, size: 28),
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
        decoration: BoxDecoration(color: Color(0xFFEFF5F5)),
        child: ListView.builder(itemCount: shayri.length, itemBuilder: (context, index) {
          //PageScrollPhysics;
          PageScrollPhysics;

          return  Container(
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(color: Color(0xFFD4D4)),

            child: CustomCard(

              borderRadius: 15,
              height: 68,
              //shadowColor: Color(0xFFD4D4),
              elevation: 20,
              splashColor: Color(0xFFD4D4),

              color: hovercolor[index],
              //hoverColor: Color(0xFFEFDAD7),
              onTap: () {

              },
              child: Listener(
                onPointerDown: (event) {
                  setState(() {
                    hovercolor[index] =Color(0xFFEDE4E0);
                  });
                },onPointerUp: (event) {
                setState(() {
                  hovercolor[index] =Colors.white;
                });
                },
                child: ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(

                      builder: (context) {
                        return th(widget.category[widget.ind], index, shayri
                        );
                      },
                    ));
                  },
                  leading: Container(
                    height: 40,
                    width: 40,


                    child: Image(
                      image: AssetImage(
                          "imaage1/${widget.categoryimg[widget.ind]}"),
                      fit: BoxFit.fill,
                      // child: Image(image: AssetImage("imaage1/${categoryimage[index]}"), fit:BoxFit.fill ,

                    ),
                  ),

                  trailing:
                  Icon(Icons.arrow_forward_ios, color: Color(0xFFAC7D88)),

                  title: Text(
                      "${shayri[index]}",maxLines: 2,
                      style: TextStyle(
                          color: Color(0xFFAC7D88),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
              ),

            ),
          );

        },),
      ),
    );
  }
}
