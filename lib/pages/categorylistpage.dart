import 'package:apptienda/helpers/utils.dart';
import 'package:apptienda/models/category.dart';
import 'package:apptienda/widgets/iconfont.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryListPage extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Selecciona una categoria",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return Container(
                    // child: Text(categories[index].name),
                    margin: EdgeInsets.all(20),
                    height: 150,
                    child: Stack(
                      children: [
                        Positioned.fill(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "assets/images/" +
                                categories[index].imgName +
                                ".jpg",
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
                        Row(
                          children: [
                            Container(
                              color: categories[index].color,
                              padding: EdgeInsets.all(10),
                              child: IconFont(
                                color: Colors.white,
                                iconName: categories[index].icon,
                                size: 30,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
