import 'package:apptienda/helpers/appcolors.dart';
import 'package:apptienda/helpers/utils.dart';
import 'package:apptienda/models/category.dart';
import 'package:apptienda/pages/categoybottombar.dart';
import 'package:apptienda/pages/selectedcategorypage.dart';
import 'package:apptienda/widgets/categorycard.dart';
import 'package:apptienda/widgets/categoryicon.dart';
import 'package:apptienda/widgets/iconfont.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryListPage extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        //dentro del AppBar agregue un icono y lo centre
        title: Center(
          child: Icon(
            Icons.home,
            color: Colors.blue,
            size: 40.0,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: AppColors.MAIN_COLOR),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(
              child: Image.asset("assets/images/user.png"),
            ),
          )
        ],
      ),
      body: Container(
          child: Stack(
        children: [
          Column(
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
                  padding: EdgeInsets.only(bottom: 120),
                  itemCount: categories.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return CategoryCard(
                        category: categories[index],
                        onCardClick: () {
                          //navegar a otra pagina
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelectCategoryPage()));
                        });
                  },
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: CategoryBottomBar(),
              )
            ],
          ),
        ],
      )),
    );
  }
}
