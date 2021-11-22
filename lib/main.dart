import 'package:apptienda/pages/splashpage.dart';
import 'package:apptienda/pages/welcomepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme es una opcion para incluir fuentes personalizadas o externas
      //previamente colocadas en pubspec.yaml
      //theme: ThemeData(fontFamily: ""),
      title: 'Inicio',
      home: SplashPage(
        duration: 3,
        goToPage: WelcomePage(),
      ),
    ),
  );
}
