import 'package:flutter/material.dart';

class IconFont extends StatelessWidget {
  late Color color;
  late double size;
  late String iconName;

  IconFont({required this.color, required this.size, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.iconName,
      style: TextStyle(
          color: this.color, fontSize: this.size, fontFamily: "logotienda"),
    );
  }
}
