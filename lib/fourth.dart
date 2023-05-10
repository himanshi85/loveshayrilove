import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';

class fo extends StatefulWidget {
  String category2;
  int indexx;
  List syy;
  List emojii;

  fo(this.category2, this.indexx, this.syy, this.emojii);

  @override
  State<fo> createState() => _foState();
}

class _foState extends State<fo> {
  Color clr = Color(0xFFEFDAD7);
  double fsize = 18;

  Color col = Color(0xFF85586F);
  List Style = [
    "f1",
    "f2",
    "f3",
    "f4",
    "f5",
  ];
  String Fstyle = "";
  bool clrstatus = true;

  List color = [
    Color(0xFFC85C8E),
    Color(0xFF898AA6),
    Color(0xFF1A120B),
    Color(0xFFDBA39A),
    Color(0xFFF5EBE0),
    Color(0xFFDEF5E5),
    Color(0xFFFF9F9F),
    Color(0xFFADDDD0),
    Color(0xFFAEBDCA),
    Color(0xFFC3F8FF),
    Color(0xFFFFF6BF),
    Color(0xFF967E76),
    Color(0xFFFFC090),
    Color(0xFF54BAB9),
    Color(0xFFB270A2),
    Color(0xFFA47E3B),
    Color(0xFFF48484),
    Color(0xFF7286D3),
    Color(0xFFC27664),
    Color(0xFFB7B78A),
    Color(0xFF3A4F7A),
    Color(0xFF5F9DF7),
    Color(0xFF7D6E83),
    Color(0xFFF0E161),
    Color(0xFFAFB4FF),
    Color(0xFFAC7088),
    Color(0xFF7A4069),
  ];

  List colorr = [
    Color(0xFFDEF5E5),
    Color(0xFF000000),
    Color(0xFFD75281),
    Color(0xFF7A4069),
    Color(0xFF94B49F),
    Color(0xFF61A4BC),
    Color(0xFF8B7E74),
    Color(0xFFBA94D1),
    Color(0xFFA0E4CB),
    Color(0xFF0E5E6F),
    Color(0xFF8D9EFF),
    Color(0xFFAA8B56),
    Color(0xFF905E96),
    Color(0xFF4C6793),
    Color(0xFFB1B2FF),
    Color(0xFFCDF0EA),
    Color(0xFFEEE3CB),
    Color(0xFF7FBCD2),
    Color(0xFFF5EDDC),
    Color(0xFFCCD6A6),
    Color(0xFFA8A4CE),
    Color(0xFF6E85B7),
    Color(0xFF90C8AC),
    Color(0xFFC689C6),
    Color(0xFF9CB4CC),
    Color(0xFFB09B71),
    Color(0xFF76BA99),
    Color(0xFFF7E2D6),
    Color(0xFF774360),
    Color(0xFFD6D5A8),
    Color(0xFF4C3575),
    Color(0xFF9A86A4),
    Color(0xFF97C4B8),
    Color(0xFFFFEF82),
    Color(0xFFF9EBC8),
    Color(0xFFAC7D88),
  ];
  Gradient gr = LinearGradient(colors: [Color(0xFFEFDAD7), Color(0xFF986D8E)]);

  List<LinearGradient> lg = [
    LinearGradient(colors: GradientColors.cherryNew),
    LinearGradient(colors: GradientColors.indigo),
    LinearGradient(colors: GradientColors.grey),
    LinearGradient(colors: GradientColors.almost),
    LinearGradient(colors: GradientColors.aquaSplash),
    LinearGradient(colors: GradientColors.blackGray),
    LinearGradient(colors: GradientColors.aubergine),
    LinearGradient(colors: GradientColors.cloudy),
    LinearGradient(colors: GradientColors.coolBlues),
    LinearGradient(colors: GradientColors.dustyGrass),
    LinearGradient(colors: GradientColors.darkOcean),
    LinearGradient(colors: GradientColors.eternalConstance),
    LinearGradient(colors: GradientColors.kashmir),
    LinearGradient(colors: GradientColors.heavyRain),
    LinearGradient(colors: GradientColors.frozenDreams),
    LinearGradient(colors: GradientColors.colorfulPeach),
    LinearGradient(colors: GradientColors.farawayRiver),
    LinearGradient(colors: GradientColors.flyHigh),
    LinearGradient(colors: GradientColors.facebookMessenger),
  ];

  List nemoji = [
    " 🌷🍀🌺🥀🌹🌻🌼 😄🥰",
    "😄☺😍😛🥰💓👫😎😉",
    " 😍😇🥰😘❤💛❣🙈👩‍❤‍💋‍👨",
    "🥰😇😂💓💝❤💐😘🥰😍",
    "🤩😁😍😌😎😉💗💘🧡",
    "🥰😍😁☺🔥😊☺👩‍❤",
    "😄☺😍😛🥰💓👫😎😉",
    "🥲😍👬👭👫💑👩‍❤👨❣💕",
    "😍🥰😘👭👬💑💏💘🧡💛",
  ];
  String s = "";

  List background = [
    LinearGradient(colors: [Color(0xFFC85C8E), Color(0xFF986D8E)])
  ];
  List listerr = [];
  String folderpath = "";
  GlobalKey gb = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listerr = List.filled(widget.syy.length, Color(0xFFC85C8E));
    createFolder().then((value) {
      setState(() {
        folderpath = value;
        print("=====$folderpath");
      });
    });
  }

  Future<String> createFolder() async {
    final folderName = "shayri_app";
    final path1 = Directory("storage/emulated/0/Download/$folderName");
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
    if ((await path1.exists())) {
      return path1.path;
    } else {
      path1.create();
      return path1.path;
    }
  }

  Future<Uint8List> _capturePng() async {
    try {
      print('inside');
      RenderRepaintBoundary? boundary =
          gb.currentContext!.findRenderObject() as RenderRepaintBoundary?;
      ui.Image image = await boundary!.toImage(pixelRatio: 3.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      var pngBytes = byteData!.buffer.asUint8List();
      var bs64 = base64Encode(pngBytes);
      print(pngBytes);
      print(bs64);
      setState(() {});
      return pngBytes;
    } catch (e) {
      print(e);
      return Future.value();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFAC7D88),
          title: Text("${widget.category2}",
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
              Expanded(
                flex: 3,
                child: RepaintBoundary(
                  key: gb,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(12, 70, 12, 70),
                    decoration: BoxDecoration(
                      gradient: clrstatus
                          ? LinearGradient(colors: [
                              Colors.transparent,
                              Colors.transparent,
                            ])
                          : gr,

                      border: Border.all(color: Color(0xFFEFDAD7)),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Color(0xFFAC7D88),
                      //       blurRadius: 8,
                      //       spreadRadius: 2.5),
                      //
                      // ]
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        // gradient: gr,
                        color: clrstatus ? clr : Colors.transparent,

                        border: Border.all(color: Color(0xFFEFDAD7)),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        // boxShadow: [
                        //   BoxShadow(
                        //       color: Color(0xFFAC7D88),
                        //       blurRadius: 8,
                        //       spreadRadius: 2.5),
                        //
                        // ]
                      ),
                      child: Center(
                          child: Text(
                        "${widget.emojii[widget.indexx]}\n"
                        "${widget.syy[widget.indexx]}",
                        style: TextStyle(
                            fontFamily: Fstyle,
                            color: col,
                            fontWeight: FontWeight.bold,
                            fontSize: fsize),
                      )
                      ),
                    ),
                  ),
                ),
              ),

              //fourth
              Expanded(
                child: Container(
                  color: Color(0xFFFFFFFFF),
                  margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  //padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: CustomCard(
                    borderRadius: 10,
                    height: 800,
                    elevation: 10,
                    child: Column(
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              clrstatus = false;
                              lg.shuffle(Random());
                              gr = lg[widget.indexx];
                            });
                          },
                          child: Container(
                            //color: Color(0xFFEFDAD7),
                            margin: EdgeInsets.all(3),
                            height: 35,
                            width: 35,

                            child: Center(
                                child: Image(
                                    image: AssetImage("imaage1/img_24.png"))),
                          ),
                        )),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: CustomCard(
                                  borderRadius: 10,
                                  height: 170,

                                  elevation: 10,

                                  color: Color(0xFFEFDAD7),
                                  hoverColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  //shadowColor: Colors.transparent,
                                  borderColor: Colors.transparent,

                                  onTap: () {
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          height: 200,
                                          child: GridView.builder(
                                            itemCount: color.length,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 8),
                                            itemBuilder: (context, index) {
                                              if (index == 7) {
                                                return IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    icon: Icon(Icons.close));
                                              }
                                              return CustomCard(
                                                onTap: () {
                                                  setState(() {
                                                    clrstatus = true;
                                                    clr = color[index];
                                                  });
                                                },
                                                child: Container(
                                                  color: color[index],
                                                  margin: EdgeInsets.all(5),
                                                ),
                                              );
                                            },
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Listener(
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEFDAD7),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "Background",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xFF85586F),
                                            fontSize: 15),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: CustomCard(
                                  borderRadius: 10,
                                  height: 200,
                                  elevation: 10,
                                  color: Color(0xFFEFDAD7),
                                  onTap: () {
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          height: 200,
                                          //color: Colors.redAccent,
                                          child: GridView.builder(
                                            itemCount: colorr.length,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 8),
                                            itemBuilder: (context, index) {
                                              if (index == 7) {
                                                return IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    icon: Icon(Icons.close));
                                              }
                                              return CustomCard(
                                                //hoverColor: Color(0xFFEFDAD7),
                                                onTap: () {
                                                  setState(() {
                                                    col = colorr[index];
                                                  });
                                                },
                                                child: Container(
                                                  color: colorr[index],
                                                  margin: EdgeInsets.all(5),
                                                ),
                                              );
                                            },
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEFDAD7),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Text Color",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Color(0xFF85586F),
                                          fontSize: 15),
                                    )),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: CustomCard(
                                  borderRadius: 10,
                                  height: 150,

                                  elevation: 10,

                                  color: Color(0xFFEFDAD7),

                                  //color: Colors.white,
                                  hoverColor: Color(0xFFFFFFFF),
                                  onTap: () {
                                    _capturePng().then((value) {
                                      String imgname =
                                          "shayri_image${Random().nextInt(1000)}${Random().nextInt(1000)}.jpg";
                                      String imgpath = "$folderpath/$imgname";
                                      File file = File(imgpath);
                                      file.writeAsBytes(value);
                                      Share.shareFiles(['${file.path}'],
                                          text: "shayri app");
                                      //print("=====$value");
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEFDAD7),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Share",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Color(0xFF85586F),
                                          fontSize: 15),
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: InkWell(
                                  child: CustomCard(
                                    borderRadius: 10,
                                    height: 150,
                                    elevation: 10,
                                    color: Color(0xFFEFDAD7),
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return Container(
                                            height: 200,
                                            child: ListView.builder(
                                              itemCount: Style.length,
                                              itemBuilder: (context, index) {
                                                return InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      Fstyle = Style[index];
                                                    });
                                                  },
                                                  child: Container(
                                                    child: ListTile(
                                                        title: Text("shayri",
                                                            style: TextStyle(
                                                                fontFamily: Style[
                                                                    index],fontSize: 15
                                                            )
                                                        )
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEFDAD7),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "Font",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xFF85586F),fontSize: 15),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  child: CustomCard(
                                    borderRadius: 10,
                                    height: 150,
                                    elevation: 10,
                                    color: Color(0xFFEFDAD7),
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return Container(
                                            height: 200,
                                            child: ListView.builder(
                                              itemCount: nemoji.length,
                                              itemBuilder: (context, index) {
                                                return CustomCard(
                                                  elevation: 4,
                                                  hoverColor: Color(0xFFEFDAD7),
                                                  onTap: () {},
                                                  child: Container(
                                                    margin: EdgeInsets.all(5),
                                                    color: Color(0xFFF2E5E5),
                                                    child: ListTile(
                                                      onTap: () {
                                                        setState(() {
                                                          widget.emojii[widget
                                                                  .indexx] =
                                                              nemoji[index];
                                                        });
                                                      },
                                                      title: Text(
                                                          "${nemoji[index]}"),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEFDAD7),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "Emoji",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xFF85586F)),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: CustomCard(
                                  borderRadius: 10,
                                  height: 150,
                                  elevation: 10,
                                  color: Color(0xFFEFDAD7),
                                  onTap: () {
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          height: 150,
                                          child: StatefulBuilder(
                                            builder: (context, setState1) {
                                              return Slider(
                                                value: fsize,
                                                min: 5,
                                                max: 25,
                                                onChanged: (value) {
                                                  setState1(() {
                                                    setState(() {
                                                      fsize = value;
                                                    });
                                                  });
                                                },
                                              );
                                            },
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEFDAD7),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Text Size",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Color(0xFF85586F),fontSize: 15),
                                    )),
                                  ),
                                ),
                              ),
                            ],
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
