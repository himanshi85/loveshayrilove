import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';

class pp extends StatefulWidget {
  const pp({Key? key}) : super(key: key);

  @override
  State<pp> createState() => _ppState();
}

class _ppState extends State<pp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 50,
                    right: 15,
                    left: 15,
                  ),
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 200),
                    decoration: BoxDecoration(

                      //gradient: g,
                    ),


                child: const Card(
                  color: Color(0xFFEFDAD7),
                  elevation: 30,


                  //shape:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.zero)),
                  borderOnForeground: true,
                  shadowColor: Color(0xFF85586F),
                  semanticContainer: true,
                  surfaceTintColor: Color(0xFF85586F),
                  child:
                  Text(
                      "oegoheg",
                    style: TextStyle(
                        color:
                        Color(0xFF85586F),

                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
    ),
                ),
                 Container(

      //  width: 200,
      padding: EdgeInsets.only(
        top: 50,
        right: 15,
        left: 15,
      ),

      margin: EdgeInsets.fromLTRB(15, 0, 15, 200),
      decoration: BoxDecoration(
        //color:
        //Color(0xFFEFDAD7),
        //gradient: g,
      ),
      child:Card(
        color: Color(0xFFEFDAD7),
        elevation: 30,


        //shape:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.zero)),
        borderOnForeground: true,
        shadowColor: Color(0xFF85586F),
        semanticContainer: true,
        surfaceTintColor: Color(0xFF85586F),

        child:
        Text(
          "slfhlwaif",
          style: TextStyle(
              color:
              Color(0xFF85586F),

              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    )
              ],
            ),


          );


  }
}



//////////////////////////////////////
