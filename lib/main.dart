import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
  String Winner = "";
  void checkPatterns() {
    //for player one
    bool Pattern1 = index0 == 1 && index1 == 1 && index2 == 1;
    bool Pattern2 = index0 == 1 && index3 == 1 && index6 == 1;
    bool Pattern3 = index6 == 1 && index7 == 1 && index8 == 1;
    bool Pattern4 = index8 == 1 && index5 == 1 && index2 == 1;
    bool Pattern5 = index1 == 1 && index4 == 1 && index7 == 1;
    bool Pattern6 = index3 == 1 && index4 == 1 && index5 == 1;
    bool Pattern7 = index0 == 1 && index4 == 1 && index8 == 1;
    bool Pattern8 = index2 == 1 && index4 == 1 && index6 == 1;

    //for player two
    bool Pattern9 = index0 == 2 && index1 == 2 && index2 == 2;
    bool Pattern10 = index0 == 2 && index3 == 2 && index6 == 2;
    bool Pattern11 = index6 == 2 && index7 == 2 && index8 == 2;
    bool Pattern12 = index8 == 2 && index5 == 2 && index2 == 2;
    bool Pattern13 = index1 == 2 && index4 == 2 && index7 == 2;
    bool Pattern14 = index3 == 2 && index4 == 2 && index5 == 2;
    bool Pattern15 = index0 == 2 && index4 == 2 && index8 == 2;
    bool Pattern16 = index2 == 2 && index4 == 2 && index6 == 2;

    if (Pattern1 ||
        Pattern2 ||
        Pattern3 ||
        Pattern4 ||
        Pattern5 ||
        Pattern6 ||
        Pattern7 ||
        Pattern8) {
      Winner = "Player one wins";
      print(Winner);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(Winner)));
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
      });
    } else if (Pattern9 ||
        Pattern10 ||
        Pattern11 ||
        Pattern12 ||
        Pattern13 ||
        Pattern14 ||
        Pattern15 ||
        Pattern16) {
      Winner = "Player two wins";
      print(Winner);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(Winner)));
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
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          children: [
            Expanded(
                child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 3, crossAxisSpacing: 3),
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
                        checkPatterns();
                      });
                    },
                    child: index0 == 1
                        ? Container(
                            color: Colors.black,
                            child: Image.asset(
                              'assets/cross.png',
                            ),
                          )
                        : index0 == 2
                            ? Container(
                                color: Colors.black,
                                child: Image.asset(
                                  'assets/zero.png',
                                ))
                            : Container(
                                color: Colors.black,
                              )),
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
                        checkPatterns();
                      });
                    },
                    child: index1 == 1
                        ? Container(
                            color: Colors.black,
                            child: Image.asset(
                              'assets/cross.png',
                            ),
                          )
                        : index1 == 2
                            ? Container(
                                color: Colors.black,
                                child: Image.asset(
                                  'assets/zero.png',
                                ))
                            : Container(
                                color: Colors.black,
                              )),
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
                        checkPatterns();
                      });
                    },
                    child: index2 == 1
                        ? Container(
                            color: Colors.black,
                            child: Image.asset(
                              'assets/cross.png',
                            ),
                          )
                        : index2 == 2
                            ? Container(
                                color: Colors.black,
                                child: Image.asset(
                                  'assets/zero.png',
                                ))
                            : Container(
                                color: Colors.black,
                              )),
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
                        checkPatterns();
                      });
                    },
                    child: index3 == 1
                        ? Container(
                            color: Colors.black,
                            child: Image.asset(
                              'assets/cross.png',
                            ),
                          )
                        : index3 == 2
                            ? Container(
                                color: Colors.black,
                                child: Image.asset(
                                  'assets/zero.png',
                                ))
                            : Container(
                                color: Colors.black,
                              )),
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
                        checkPatterns();
                      });
                    },
                    child: index4 == 1
                        ? Container(
                            color: Colors.black,
                            child: Image.asset(
                              'assets/cross.png',
                            ),
                          )
                        : index4 == 2
                            ? Container(
                                color: Colors.black,
                                child: Image.asset(
                                  'assets/zero.png',
                                ))
                            : Container(
                                color: Colors.black,
                              )),
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
                        checkPatterns();
                      });
                    },
                    child: index5 == 1
                        ? Container(
                            color: Colors.black,
                            child: Image.asset(
                              'assets/cross.png',
                            ),
                          )
                        : index5 == 2
                            ? Container(
                                color: Colors.black,
                                child: Image.asset(
                                  'assets/zero.png',
                                ))
                            : Container(
                                color: Colors.black,
                              )),
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
                        checkPatterns();
                      });
                    },
                    child: index6 == 1
                        ? Container(
                            color: Colors.black,
                            child: Image.asset(
                              'assets/cross.png',
                            ),
                          )
                        : index6 == 2
                            ? Container(
                                color: Colors.black,
                                child: Image.asset(
                                  'assets/zero.png',
                                ))
                            : Container(
                                color: Colors.black,
                              )),
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
                        checkPatterns();
                      });
                    },
                    child: index7 == 1
                        ? Container(
                            color: Colors.black,
                            child: Image.asset(
                              'assets/cross.png',
                            ),
                          )
                        : index7 == 2
                            ? Container(
                                color: Colors.black,
                                child: Image.asset(
                                  'assets/zero.png',
                                ))
                            : Container(
                                color: Colors.black,
                              )),
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
                        checkPatterns();
                      });
                    },
                    child: index8 == 1
                        ? Container(
                            color: Colors.black,
                            child: Image.asset(
                              'assets/cross.png',
                            ),
                          )
                        : index8 == 2
                            ? Container(
                                color: Colors.black,
                                child: Image.asset(
                                  'assets/zero.png',
                                ))
                            : Container(
                                color: Colors.black,
                              )),
              ],
            )),
            turn == 0
                ? ElevatedButton(
                    onPressed: () {
                      setState(() {
                        turn = 1;
                      });
                    },
                    child: Text("start"))
                : ElevatedButton(
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
                    child: Text("Reset"))
          ],
        ),
      ),
    );
  }
}
