import 'package:apptienda/models/category.dart';
import 'package:apptienda/widgets/categoryicon.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  late Category category;
  Function onCardClick;

  CategoryCard({required this.category, required this.onCardClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onCardClick();
      },
      child: Container(
        // child: Text(categories[index].name),
        margin: EdgeInsets.all(20),
        height: 150,
        child: Stack(
          children: [
            Positioned.fill(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                "assets/images/" + this.category.imgName + ".jpg",
                fit: BoxFit.cover,
              ),
            )),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      gradient: LinearGradient(
                        colors: [],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      )),
                )),
            Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      CategoryIcon(
                          color: this.category.color,
                          iconName: this.category.icon),
                      SizedBox(width: 10),
                      Text(
                        this.category.name,
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
