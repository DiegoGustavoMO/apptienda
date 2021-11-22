import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({required this.goToPage, required this.duration});
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });
    return Scaffold(
      body: Container(
          color: Color(0xFF38b6ff),
          alignment: Alignment.center,
          child: Column(
            children: [
              //IconFont(
              // color: Colors.blue,
              //size: 100,
              //iconName: IconFontHelper.MAIN_LOGO),
              Image.asset(
                "assets/images/mitienditalogo1.png",
                height: 300.0,
                width: 300.0,
                //linea nueva para centrar , probar
                alignment: Alignment.center,
              ),
            ],
          )),
    );
  }
}
