import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tick-Tack-Toe',
      home: Tutorial(),
    ); // MaterialApp
  }
}

class Tutorial extends StatefulWidget {
  const Tutorial({super.key});

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  int index0 = 0;
  int index1 = 0;
  int index2 = 0;
  int index3 = 0;
  int index4 = 0;
  int index5 = 0;
  int index6 = 0;
  int index7 = 0;
  int index8 = 0;
  int turn = 0;
  String winner = "";
  void checkpatterns() {
    bool pattern1 = index0 == 1 && index1 == 1 && index2 == 1;
    bool pattern2 = index0 == 1 && index3 == 1 && index6 == 1;
    bool pattern3 = index0 == 1 && index4 == 1 && index8 == 1;
    bool pattern4 = index1 == 1 && index4 == 1 && index7 == 1;
    bool pattern5 = index2 == 1 && index4 == 1 && index6 == 1;
    bool pattern6 = index2 == 1 && index5 == 1 && index8 == 1;
    bool pattern7 = index6 == 1 && index7 == 1 && index8 == 1;
    bool pattern8 = index3 == 1 && index7 == 1 && index8 == 1;
    // bool pattern9=index0==1 && index1==1 && index2==1;
    //FOR PLAYER 2
    bool pattern9 = index0 == 2 && index1 == 2 && index2 == 2;
    bool pattern10 = index0 == 2 && index3 == 2 && index6 == 2;
    bool pattern11 = index0 == 2 && index4 == 2 && index8 == 2;
    bool pattern12 = index1 == 2 && index4 == 2 && index7 == 2;
    bool pattern13 = index2 == 2 && index4 == 2 && index6 == 2;
    bool pattern14 = index2 == 2 && index5 == 2 && index8 == 2;
    bool pattern15 = index6 == 2 && index7 == 2 && index8 == 2;
    bool pattern16 = index3 == 2 && index7 == 2 && index8 == 2;
    if (pattern1 ||
        pattern2 ||
        pattern3 ||
        pattern3 ||
        pattern4 ||
        pattern5 ||
        pattern6 ||
        pattern7 ||
        pattern8) {
      winner = "Player 1 won!";
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(winner, style : const TextStyle(fontSize: 20, fontWeight: FontWeight.bold , color: Color.fromARGB(255, 0, 204, 255)))),
      ));
      setState(() {
        index0 = 0;
        index1 = 0;
        index2 = 0;
        index3 = 0;
        index4 = 0;
        index5 = 0;
        index6 = 0;
        index7 = 0;
        index8 = 0;
        turn = 0;
      });
    } else if (pattern9 ||
        pattern10 ||
        pattern11 ||
        pattern12 ||
        pattern13 ||
        pattern14 ||
        pattern15 ||
        pattern16) {
      winner = "Player 2 won!";
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(winner, style: const TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Color.fromARGB(255, 0, 204, 255)),),
      )));
      setState(() {
        index0 = 0;
        index1 = 0;
        index2 = 0;
        index3 = 0;
        index4 = 0;
        index5 = 0;
        index6 = 0;
        index7 = 0;
        index8 = 0;
        turn = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Center(
           child: Text("Tick-Tack-Toe", style: TextStyle(color: Colors.black , fontSize: 30
           ),
           
           ),
         ),
          backgroundColor: Colors.white,
         toolbarTextStyle: const TextStyle(color: Colors.black),
      ),
  
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100),
        child: Column(
          children: [
            Expanded(
                child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
              ),
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (turn == 1) {
                        index0 = 1;
                        turn = 2;
                      } else if (turn == 2) {
                        index0 = 2;
                        turn = 1;
                      }
                      checkpatterns();
                    });
                  },
                  child: index0 == 1
                      ? Container(
                          color: Colors.white,
                          child: Image.asset("Images/black_cross.png"))
                      : index0 == 2
                          ? Container(
                              color: Colors.white,
                              child: Image.asset("Images/Circles_black.png"))
                          : Container(
                              color: Colors.white,
                            ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (turn == 1) {
                        index1 = 1;
                        turn = 2;
                      } else if (turn == 2) {
                        index1 = 2;
                        turn = 1;
                      }
                      checkpatterns();
                    });
                  },
                  child: index1 == 1
                      ? Container(
                          color: Colors.white,
                          child: Image.asset("Images/black_cross.png"))
                      : index1 == 2
                          ? Container(
                              color: Colors.white,
                              child: Image.asset("Images/Circles_black.png"))
                          : Container(
                              color: Colors.white,
                            ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (turn == 1) {
                        index2 = 1;
                        turn = 2;
                      } else if (turn == 2) {
                        index2 = 2;
                        turn = 1;
                      }
                      checkpatterns();
                    });
                  },
                  child: index2 == 1
                      ? Container(
                          color: Colors.white,
                          child: Image.asset("Images/black_cross.png"))
                      : index2 == 2
                          ? Container(
                              color: Colors.white,
                              child: Image.asset("Images/Circles_black.png"))
                          : Container(
                              color: Colors.white,
                            ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (turn == 1) {
                        index3 = 1;
                        turn = 2;
                      } else if (turn == 2) {
                        index3 = 2;
                        turn = 1;
                      }
                      checkpatterns();
                    });
                  },
                  child: index3 == 1
                      ? Container(
                          color: Colors.white,
                          child: Image.asset("Images/black_cross.png"))
                      : index3 == 2
                          ? Container(
                              color: Colors.white,
                              child: Image.asset("Images/Circles_black.png"))
                          : Container(
                              color: Colors.white,
                            ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (turn == 1) {
                        index4 = 1;
                        turn = 2;
                      } else if (turn == 2) {
                        index4 = 2;
                        turn = 1;
                      }
                      checkpatterns();
                    });
                  },
                  child: index4 == 1
                      ? Container(
                          color: Colors.white,
                          child: Image.asset("Images/black_cross.png"))
                      : index4 == 2
                          ? Container(
                              color: Colors.white,
                              child: Image.asset("Images/Circles_black.png"))
                          : Container(
                              color: Colors.white,
                            ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (turn == 1) {
                        index5 = 1;
                        turn = 2;
                      } else if (turn == 2) {
                        index5 = 2;
                        turn = 1;
                      }
                      checkpatterns();
                    });
                  },
                  child: index5 == 1
                      ? Container(
                          color: Colors.white,
                          child: Image.asset("Images/black_cross.png"))
                      : index5 == 2
                          ? Container(
                              color: Colors.white,
                              child: Image.asset("Images/Circles_black.png"))
                          : Container(
                              color: Colors.white,
                            ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (turn == 1) {
                        index6 = 1;
                        turn = 2;
                      } else if (turn == 2) {
                        index6 = 2;
                        turn = 1;
                      }
                      checkpatterns();
                    });
                  },
                  child: index6 == 1
                      ? Container(
                          color: Colors.white,
                          child: Image.asset("Images/black_cross.png"))
                      : index6 == 2
                          ? Container(
                              color: Colors.white,
                              child: Image.asset("Images/Circles_black.png"))
                          : Container(
                              color: Colors.white,
                            ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (turn == 1) {
                        index7 = 1;
                        turn = 2;
                      } else if (turn == 2) {
                        index7 = 2;
                        turn = 1;
                      }
                      checkpatterns();
                    });
                  },
                  child: index7 == 1
                      ? Container(
                          color: Colors.white,
                          child: Image.asset("Images/black_cross.png"))
                      : index7 == 2
                          ? Container(
                              color: Colors.white,
                              child: Image.asset("Images/Circles_black.png"))
                          : Container(
                              color: Colors.white,
                            ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (turn == 1) {
                        index8 = 1;
                        turn = 2;
                      } else if (turn == 2) {
                        index8 = 2;
                        turn = 1;
                      }
                      checkpatterns();
                    });
                  },
                  child: index8 == 1
                      ? Container(
                          color: Colors.white,
                          child: Image.asset("Images/black_cross.png"))
                      : index8 == 2
                          ? Container(
                              color: Colors.white,
                              child: Image.asset("Images/Circles_black.png"))
                          : Container(
                              color: Colors.white,
                            ),
                ),
              ],
            )),
            turn == 0
                ? Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                          foregroundColor: Colors.black,
                        ),
                          onPressed: () {
                            setState(() {
                              turn = 1;
                            });
                          },
                          child:  const Text("Start Game", selectionColor: Colors.black,)
                          ,
                          ),
                    ),
                  ),
                )
                : Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                        ),
                          onPressed: () {
                            setState(() {
                              
                            
                            index0 = 0;
                            index1 = 0;
                            index2 = 0;
                            index3 = 0;
                            index4 = 0;
                            index5 = 0;
                            index6 = 0;
                            index7 = 0;
                            index8 = 0;
                            turn = 0;
                          });
                          },
                          child:  const Text("Reset Game")),
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
