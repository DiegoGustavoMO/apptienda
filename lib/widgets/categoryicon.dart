import 'package:apptienda/widgets/iconfont.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryIcon extends StatelessWidget {
  late Color color;
  late String iconName;
  late double size;

  CategoryIcon({required this.color, required this.iconName, this.size = 30});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: this.color,
        padding: EdgeInsets.all(10),
        child: IconFont(
          color: Colors.white,
          iconName: this.iconName,
          size: this.size,
        ),
      ),
    );
  }
}
