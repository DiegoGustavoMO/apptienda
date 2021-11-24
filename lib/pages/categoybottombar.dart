import 'package:apptienda/helpers/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.2),
            offset: Offset.zero)
      ]),
      height: 100,
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(Icons.assignment_outlined,
                    color: AppColors.MAIN_COLOR),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(Icons.add_business, color: AppColors.MAIN_COLOR),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(Icons.list_alt, color: AppColors.MAIN_COLOR),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon:
                    Icon(Icons.add_shopping_cart, color: AppColors.MAIN_COLOR),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
