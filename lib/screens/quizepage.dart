import 'dart:io';

import 'package:flutter/material.dart';
import 'package:labtin/component/question.dart';

import 'package:labtin/models/model1.dart';
import 'package:labtin/screens/home.dart';

class QuizePage extends StatefulWidget {
  const QuizePage({super.key});

  @override
  State<QuizePage> createState() => _QuizePageState();
}

class _QuizePageState extends State<QuizePage>
    with SingleTickerProviderStateMixin {
  Color color1 = HexColor("#F2DCE8");
  Color color2 = HexColor("#F2A2D6");
  Color color3 = HexColor("#F2BBE3");
  Color color4 = HexColor("#0583F2");
  Color color5 = HexColor("#F2E1D8");
  String name = "";
  String name2 = "";
  String name3 = "";
  late int current;
  int count1 = 0;
  int count2 = 0;
  int count3 = 0;
  int totalcount = 0;
  late TabController _controller;
  int _selectedIndex = 0;
  String? radioVal;
  Color col1 = Colors.green;
  Color col2 = Colors.redAccent.shade700;
  Color? col3;
  Icon i11 = Icon(
    Icons.check,
    color: Colors.green,
  );
  Icon i12 = Icon(
    Icons.cancel,
    color: Colors.redAccent.shade700,
  );
  Icon? i13;
  Icon? i14;
  Icon? i15;
  Icon i21 = Icon(
    Icons.check,
    color: Colors.green,
  );
  Icon i22 = Icon(
    Icons.cancel,
    color: Colors.redAccent.shade700,
  );
  Icon? i23;
  Icon? i24;
  Icon i31 = Icon(
    Icons.check,
    color: Colors.green,
  );
  Icon i32 = Icon(
    Icons.cancel,
    color: Colors.redAccent.shade700,
  );
  Icon? i33;
  Icon? i34;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: color4),
            title: Text(
              "Test Exam",
              style: TextStyle(
                  color: color4,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Dangrek"),
            ),
            backgroundColor: color2,
            elevation: 5,
            bottom: TabBar(
                controller: _controller,
                labelColor: color4,
                unselectedLabelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    gradient: LinearGradient(colors: [color2, color3]),
                    borderRadius: BorderRadius.circular(5)),
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Question 1",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Dangrek")),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Question 2",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Dangrek")),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Question 3",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Dangrek")),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(controller: _controller, children: [
            Column(
              children: [
                Question(
                    text: "Q.1 Flutter is a",
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSS_YJ8jz7N2nFBIY1IsUZQzsUFwaoAhsPvQ&usqp=CAU"),
                SizedBox(
                  height: 30,
                ),
                RadioListTile(
                    title: Text(
                      "Programming Language",
                      style: TextStyle(fontFamily: "Dangrek"),
                    ),
                    secondary: (i13),
                    value: "Programming Language",
                    groupValue: name,
                    onChanged: (val) {
                      setState(() {
                        i13 = i12;
                        i14 = i12;
                        i15 = i11;
                        name = val.toString();
                        count1 = 0;
                      });
                    }),
                SizedBox(
                  height: 15,
                ),
                RadioListTile(
                    title: Text("SDK", style: TextStyle(fontFamily: "Dangrek")),
                    secondary: i14,
                    value: "SDK",
                    groupValue: name,
                    onChanged: (val) {
                      setState(() {
                        i13 = i12;
                        i14 = i12;
                        i15 = i11;
                        name = val.toString();
                        count1 = 0;
                      });
                    }),
                SizedBox(
                  height: 15,
                ),
                RadioListTile(
                    title: Text("None of the above",
                        style: TextStyle(fontFamily: "Dangrek")),
                    secondary: i15,
                    value: "None of the above",
                    groupValue: name,
                    onChanged: (val) {
                      setState(() {
                        i13 = i12;
                        i14 = i12;
                        i15 = i11;
                        name = val.toString();
                        count1++;
                      });
                    }),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(50)),
                        onPressed: () {
                          if (_selectedIndex <= 2) {
                            _controller.animateTo(_selectedIndex += 1);
                          } else {
                            _selectedIndex == 0;
                            _controller.animateTo(_selectedIndex += 1);
                          }
                        },
                        child: Text("Next",
                            style: TextStyle(fontFamily: "Dangrek")),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //tabtwo
            Column(
              children: [
                Question(
                    text:
                        "Q.2 Flutter is an __________ mobile application development framework created by Google.",
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSS_YJ8jz7N2nFBIY1IsUZQzsUFwaoAhsPvQ&usqp=CAU"),
                RadioListTile(
                  secondary: i23,
                  title: Text("Open-source",
                      style: TextStyle(fontFamily: "Dangrek")),
                  value: "Open-source",
                  onChanged: ((val) {
                    setState(() {
                      i23 = i21;
                      i24 = i22;
                      name2 = val.toString();

                      count2 = 1;
                    });
                  }),
                  groupValue: name2,
                ),
                RadioListTile(
                  secondary: i24,
                  title: Text("Shareware",
                      style: TextStyle(fontFamily: "Dangrek")),
                  value: "Shareware",
                  onChanged: ((val) {
                    setState(() {
                      i23 = i21;
                      i24 = i22;
                      name2 = val.toString();
                      count2 = 0;
                    });
                  }),
                  groupValue: name2,
                ),
                RadioListTile(
                  secondary: i24,
                  title: Text("Both", style: TextStyle(fontFamily: "Dangrek")),
                  value: "Both",
                  onChanged: ((val) {
                    setState(() {
                      i23 = i21;
                      i24 = i22;
                      name2 = val.toString();
                      count2 = 0;
                    });
                  }),
                  groupValue: name2,
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: () {
                          if (_selectedIndex <= 2) {
                            _controller.animateTo(_selectedIndex += 1);
                          } else {
                            _selectedIndex == 0;
                            _controller.animateTo(_selectedIndex += 1);
                          }
                        },
                        child: Text("Next",
                            style: TextStyle(fontFamily: "Dangrek")),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //tab3
            Column(
              children: [
                Question(
                    text:
                        "Q.3 A notable feature of the Dart platform is it doesn't support for hot reload",
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSS_YJ8jz7N2nFBIY1IsUZQzsUFwaoAhsPvQ&usqp=CAU"),
                RadioListTile(
                  secondary: i33,
                  title: Text("False", style: TextStyle(fontFamily: "Dangrek")),
                  value: "False",
                  onChanged: ((val) {
                    setState(() {
                      i33 = i31;
                      i34 = i32;
                      name3 = val.toString();
                      count3 = 1;
                    });
                  }),
                  groupValue: name3,
                ),
                RadioListTile(
                  secondary: i34,
                  title: Text("True", style: TextStyle(fontFamily: "Dangrek")),
                  value: "True",
                  onChanged: ((val) {
                    setState(() {
                      i34 = i32;
                      i33 = i31;
                      name3 = val.toString();
                      count3 = 0;
                    });
                  }),
                  groupValue: name3,
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: color4,
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: () {
                          setState(() {
                            totalcount = count1 + count2 + count3;
                          });
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: color2,
                                actions: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Your Final Grade:",
                                          style: TextStyle(
                                              color: color4,
                                              fontSize: 25,
                                              fontFamily: "Dangrek"),
                                        ),
                                        Text(
                                          "$totalcount/3",
                                          style: TextStyle(
                                              color: color4,
                                              fontSize: 25,
                                              fontFamily: "Dangrek"),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        ElevatedButton.icon(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: color4),
                                            onPressed: () {
                                              setState(() {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                  builder: (context) {
                                                    return Home();
                                                  },
                                                ));
                                              });
                                            },
                                            icon: Icon(Icons.home),
                                            label: Text("Back to home",
                                                style: TextStyle(
                                                    fontFamily: "Dangrek"))),
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: color4),
                                            onPressed: () {
                                              setState(() {
                                                exit(0);
                                              });
                                            },
                                            child: Text("Exit App"))
                                      ],
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        },
                        child: Text("Submit",
                            style: TextStyle(fontFamily: "Dangrek")),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
        ));
  }
}
