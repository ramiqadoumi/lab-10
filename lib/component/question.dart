import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  Question({required this.imageUrl, required this.text});

  String? imageUrl;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("$imageUrl"), fit: BoxFit.fill)),
        child: Container(
          padding: EdgeInsets.all(25),
          child: Text(
            "$text",
            style: TextStyle(
                color: Colors.purple,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Dangrek"),
          ),
        ));
  }
}
