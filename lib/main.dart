import 'package:apptienda/helpers/appcolors.dart';
import 'package:apptienda/helpers/iconhelper.dart';
import 'package:apptienda/widgets/iconfont.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inicio',
      home: SplashPage(
        duration: 3,
        goToPage: WelcomePage(),
      ),
    ),
  );
}

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
              ),
            ],
          )),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
                child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                "assets/images/bgtienda.png",
                fit: BoxFit.cover,
              ),
            )),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        width: 180,
                        height: 180,
                        color: Color(0xFF38b6ff),
                        child: IconFont(
                          iconName: IconFontHelper.MAIN_LOGO,
                          color: Colors.white,
                          size: 130,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Bienvenido",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Las tienda de tu barrio.\nen un solo lugar",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(25.0),
                        primary: Color(0xFF38b6ff),
                        textStyle: const TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      onPressed: () {},
                      child: const Text('Ingresa sin registrarse'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                          highlightColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              "Ingresa con tu cuenta",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF38b6ff),
                                  fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.transparent,
                                border: Border.all(
                                  color: Color(0xFF38b6ff),
                                  width: 4,
                                )),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
