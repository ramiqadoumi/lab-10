import 'package:labtin/models/model1.dart';

import 'package:flutter/material.dart';
import 'package:labtin/screens/quizepage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color color1 = HexColor("#F2DCE8");
  Color color2 = HexColor("#F2A2D6");
  Color color3 = HexColor("#F2BBE3");
  Color color4 = HexColor("#0583F2");
  Color color5 = HexColor("#F2E1D8");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: color2,
          title: Row(
            children: [
              Icon(
                Icons.home,
                color: color4,
              ),
              Text("Louminous Academy",
                  style: TextStyle(
                      color: color4,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dangrek")),
            ],
          )),
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [color1, color2, color3, color5, color4])
            // image: DecorationImage(
            //   fit: BoxFit.fill,
            //   image: NetworkImage(
            //       "data:image/jpeg;base64,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"),
            // ),
            ),
        alignment: Alignment.topRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text("Welcome to Louminous Academy",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: "Dangrek")),
            SizedBox(
              height: 75,
            ),
            Text(
              "The right place if you want to learn flutter",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Dangrek"),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return QuizePage();
                    },
                  ));
                });
              },
              child: Text("Press me to start test exam",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                      fontFamily: "Dangrek")),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: color4, padding: EdgeInsets.all(20)),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          color: color2,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Dangrek"),
                    )),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: color4, padding: EdgeInsets.all(20)),
                    onPressed: () {},
                    child: Text("Sign Up",
                        style: TextStyle(
                            fontSize: 20,
                            color: color2,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Dangrek"))),
              ],
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "©Terms and Conditions",
                        style: TextStyle(
                            fontFamily: "Dangrek",
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
