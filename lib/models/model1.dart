import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class model1 extends StatefulWidget {
  const model1({super.key});

  @override
  State<model1> createState() => _model1State();
}

class _model1State extends State<model1> {
  Color color1 = HexColor("#F2DCE8");
  Color color2 = HexColor("#F2A2D6");
  Color color3 = HexColor("#F2BBE3");
  Color color4 = HexColor("#0583F2");
  Color color5 = HexColor("#F2E1D8");
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
