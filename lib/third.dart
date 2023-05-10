import 'dart:math';
import 'dart:ui';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';

import 'fourth.dart';

class th extends StatefulWidget {
  //List catogory1;
  int inde;
  String s;

  List sy;



  th(this.s, this.inde, this.sy);

  @override
  State<th> createState() => _thState();
}

class _thState extends State<th> {

  Gradient g = LinearGradient(colors: [Color(0xFFEFDAD7), Color(0xFFEFDAD7)]);
  List gradientt = [
    LinearGradient(colors: [Color(0xFFB05A7A), Color(0xFFECECEC)]),
    LinearGradient(colors: [Color(0xFFFAD3E7), Color(0xFFEFA3C8)]),
    LinearGradient(colors: [Color(0xFFEAC7C7), Color(0xFFEAE0DA)]),
    LinearGradient(colors: [Color(0xFF85586F), Color(0xFFF8EDE3)]),
    LinearGradient(colors: [Color(0xFFDEBACE), Color(0xFFD6E4E5)]),
    LinearGradient(colors: [Color(0xFFF8C4B4), Color(0xFFEDE4E0)]),
  ];
  List gra = [];
  List listerr=[];

  List emoji = [
    "🌷🍀🌺🥀🌹🌻🌼😄🥰",
    "😄☺😍😛🥰💓👫😎😉",
    "😅😂😁😍🥰🤟🤘💑👨",
    " 😍🥰😘🫂🥀🌺💐💞💕🤝",
    "🥰😍😁☺🔥😊☺👩‍❤️",
    " 🤩😁😍😌😎😉💗💘🧡",
    " 🥰😍🌸🌺🥀💜💙💛😊☺️",
    "🥰😍🌸🌺🥀💜💙💛😊☺",
    "😂😅😎🤘🤟👏🌺🥀💐🤎",
    "🥰💓❤️🩹❤️‍🔥🌻🔥😘😇",
    " 😍🥰😘🌺🌸💥🌼🌻☺️🥰",
    "🥰😇😂💓💝❤💐😘🥰😍",
    "😍😇🥰😘❤💛❣🙈👩‍❤‍💋‍👨"
  ];
  int cnt = 0;
  PageController pg = PageController();
  List gradient = [
    LinearGradient(colors: [
      Color(0xFFEFDAD7),
      Color(0xFF85586F),
    ]),
    LinearGradient(colors: [Color(0xFFC85C8E), Color(0xFF9D3C72)])
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //print("====${widget.inde}");
    pg = PageController(initialPage: widget.inde);
    listerr=List.filled(widget.sy.length, Color(0xFFC85C8E));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFAC7D88),
          title: Text("${widget.s}",
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
          color: Colors.white,
          child: Column(
            children: [
              //fist

              //second
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(140, 40, 10, 5),
                      child: Text(
                        "${widget.inde + 1}/${widget.sy.length}",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF85586F)),
                      ),
                    ),
                  ),
                  //gradient
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          gradientt.shuffle(Random());
                          g = gradientt[widget.inde];
                        });
                      },
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0, 40, 150, 5),
                          height: 39,
                          width: 39,

                          child: Image(
                            image: AssetImage("imaage1/img_22.png"),
                            //fit: BoxFit.fill,
                          )),
                    ),
                  ),
                ],
              ),

              Expanded(
                  flex: 6,
                  child: PageView.builder(
                    controller: pg,
                    itemCount: widget.sy.length,
                    physics: BouncingScrollPhysics(),
                    pageSnapping: true,
                    onPageChanged: (value) {
                      setState(() {
                        widget.inde = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Container(

                          //  width: 200,
                          padding: EdgeInsets.only(
                            top: 50,
                            right: 15,
                            left: 15,
                          ),
                          margin: EdgeInsets.fromLTRB(12, 15, 12, 140),
                          decoration: BoxDecoration(
                              //color:
                              //Color(0xFFEFDAD7),
                              gradient: g,
                              border: Border.all(
                                color: Color(0xFFEFDAD7)
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFFAC7D88),
                                    blurRadius: 8,
                                    spreadRadius: 2.5),
                                //BoxShadow(color: Color,spreadRadius: 2,blurRadius: 2)
                              ]),
                          child: Text(
                            "${emoji[index]}\n"
                            "${widget.sy[widget.inde]}",
                            style: TextStyle(
                                color: Color(0xFF85586F),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ));
                    },
                  )),

              //fourth
              CustomCard(
                height: 120,
                borderRadius: 25,

                //shadowColor: Color(0xFFD4D4),
                elevation: 10,
                //splashColor: Color(0xFFD4D4),

                //color: Color(0xFFEFDAD7),
                //hoverColor: Color(0xFFEFDAD7),
                onTap: () {

                },

                child: Container(
                  margin:
                      EdgeInsets.only(bottom: 10, left: 5, right: 5, top: 10),
                  //padding: EdgeInsets.fromLTRB(5, 15, 5, 15),
                  // color: Color(0xFFEFDAD7),
                  //decoration: BoxDecoration(color: Color(0xFFEFDAD7)),

                  child: CustomCard(
                    borderRadius: 15,
                    height: 150,
                    //shadowColor: Color(0xFFD4D4),
                    elevation: 10,
                    //splashColor: Color(0xFFD4D4),
                    color: Color(0xFFEFDAD7),

                    //color: Colors.white,
                    hoverColor: Color(0xFFFFFFFF),
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            FlutterClipboard.copy("${widget.sy[widget.inde]}")
                                .then((value) {
                              Fluttertoast.showToast(
                                msg: "Shayri has been copid",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM_LEFT,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Color(0xFF85586F),
                                textColor: Color(0xFFFFFFFF),
                                fontSize: 20,
                              );
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Color(0xFFEFDAD7),
                            ),
                            child: Center(
                                child: Icon(
                              Icons.copy,
                                  size: 31,
                              color: Color(0xFF85586F),
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (widget.inde > 0) {
                                widget.inde--;
                                pg.previousPage(
                                    duration: Duration(microseconds: 600),
                                    curve: Curves.easeInOut);
                              }
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Color(0xFFEFDAD7),
                            ),
                            child: Center(
                                child: Icon(
                              Icons.arrow_back_ios_rounded,
                                  size: 32,
                              color: Color(0xFF85586F),
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return fo(
                                    widget.s, widget.inde, widget.sy, emoji);
                              },
                            ));
                          },
                          child: Container(
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Color(0xFFEFDAD7),
                            ),
                            child: Center(
                                child: Image(
                              image: AssetImage("imaage1/img_17.png"),
                              height: 45,
                              width: 45,
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (widget.inde < widget.sy.length - 1) {
                                widget.inde++;
                                pg.jumpToPage(widget.inde);
                              }
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(1),
                            decoration: const BoxDecoration(
                              color: Color(0xFFEFDAD7),
                            ),
                            child: Center(
                                child: Icon(
                              Icons.arrow_forward_ios,
                                  size: 32,
                              color: Color(0xFF85586F),
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Share.share("${widget.sy[widget.inde]}");
                          },
                          child: Container(
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Color(0xFFEFDAD7),
                            ),
                            child: Center(
                                child: Icon(
                              Icons.share_rounded,
                              size: 33,
                              color: Color(0xFF85586F),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
