import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MaterialApp(home: Mypuzzle()));
}

class Mypuzzle extends StatefulWidget {
  const Mypuzzle({Key? key}) : super(key: key);

  @override
  State<Mypuzzle> createState() => _MypuzzleState();
}

class _MypuzzleState extends State<Mypuzzle> {
  List<String> list = ["2", "", "1", "5", "3", "8", "7", "4", "8"];
  String s = "";
  int moves = 0;
  int total = 0;
  bool x = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("My Puzzle"))),
      body: Center(
        child: Container(
          height: 500,
          width: 400,
          child: Column(
            children: [
              Expanded(
                child: Container(margin: EdgeInsets.only(left: 15,right: 15),
                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Moves: $moves",
                          style: TextStyle(fontSize: 25, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (list[1] == "") {
                              list[1] = list[0];
                              list[0] = "";
                              moves++;
                            } else if (list[3] == "") {
                              list[3] = list[0];
                              list[0] = "";
                              moves++;
                            }
                            result();
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              list[0],
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: HexColor("5F9DF7"),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (list[0] == "") {
                              list[0] = list[1];
                              list[1] = "";
                              moves++;
                            } else if (list[2] == "") {
                              list[2] = list[1];
                              list[1] = "";
                              moves++;
                            } else if (list[4] == "") {
                              list[4] = list[1];
                              list[1] = "";
                              moves++;
                            }
                            result();
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              list[1],
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: HexColor("5F9DF7"),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (list[1] == "") {
                              list[1] = list[2];
                              list[2] = "";
                              moves++;
                            } else if (list[5] == "") {
                              list[5] = list[2];
                              list[2] = "";
                              moves++;
                            }
                            result();
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              list[2],
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: HexColor("5F9DF7"),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (list[0] == "") {
                              list[0] = list[3];
                              list[3] = "";
                              moves++;
                            } else if (list[4] == "") {
                              list[4] = list[3];
                              list[3] = "";
                              moves++;
                            } else if (list[6] == "") {
                              list[6] = list[3];
                              list[3] = "";
                              moves++;
                            }
                            result();
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Center(
                              child: Text(
                            list[3],
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )),
                          decoration: BoxDecoration(
                            color: HexColor("5F9DF7"),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (list[1] == "") {
                              list[1] = list[4];
                              list[4] = "";
                              moves++;
                            } else if (list[3] == "") {
                              list[3] = list[4];
                              list[4] = "";
                              moves++;
                            } else if (list[5] == "") {
                              list[5] = list[4];
                              list[4] = "";
                              moves++;
                            } else if (list[7] == "") {
                              list[7] = list[4];
                              list[4] = "";
                              moves++;
                            }
                            result();
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Center(
                              child: Text(
                            list[4],
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )),
                          decoration: BoxDecoration(
                            color: HexColor("5F9DF7"),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (list[2] == "") {
                              list[2] = list[5];
                              list[5] = "";
                              moves++;
                            } else if (list[4] == "") {
                              list[4] = list[5];
                              list[5] = "";
                              moves++;
                            } else if (list[8] == "") {
                              list[8] = list[5];
                              list[5] = "";
                              moves++;
                            }
                            result();
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Center(
                              child: Text(
                            list[5],
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )),
                          decoration: BoxDecoration(
                            color: HexColor("5F9DF7"),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (list[3] == "") {
                              list[3] = list[6];
                              list[6] = "";
                              moves++;
                            } else if (list[7] == "") {
                              list[7] = list[6];
                              list[6] = "";
                              moves++;
                            }
                            result();
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Center(
                              child: Text(
                            list[6],
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )),
                          decoration: BoxDecoration(
                            color: HexColor("5F9DF7"),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (list[4] == "") {
                              list[4] = list[7];
                              list[7] = "";
                              moves++;
                            } else if (list[6] == "") {
                              list[6] = list[7];
                              list[7] = "";
                              moves++;
                            } else if (list[8] == "") {
                              list[8] = list[7];
                              list[7] = "";
                              moves++;
                            }
                            result();
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Center(
                              child: Text(
                            list[7],
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )),
                          decoration: BoxDecoration(
                            color: HexColor("5F9DF7"),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (list[5] == "") {
                              list[5] = list[8];
                              list[8] = "";
                              moves++;
                            } else if (list[7] == "") {
                              list[7] = list[8];
                              list[8] = "";
                              moves++;
                            }
                            result();
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              list[8],
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: HexColor("5F9DF7"),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Text(
                                "${s}",
                                style:
                                    TextStyle(fontSize: 25, color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              list.shuffle();
                              moves = 0;
                              total = 0;
                              s = "";
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 250,
                            child: Center(
                              child: Text("NewGame",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 19)),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: HexColor("5F9DF7"),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void result() {
    setState(() {});
    if (list[0] == "1" &&
        list[1] == "2" &&
        list[2] == "3" &&
        list[3] == "4" &&
        list[4] == "5" &&
        list[5] == "6" &&
        list[6] == "7" &&
        list[7] == "8" &&
        list[8] == "") {
      x = false;
      s = "Congratulation you win :)";
      total = moves;
      print(total);
    }
  }
}

// onPressed: () {
// setState(() {
// list.shuffle();
// moves = 0;
// total = 0;
// s = "";
// });
// },
