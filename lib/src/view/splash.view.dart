import 'dart:async';
import 'package:app_gasfy/src/utils/global.colors.dart';
import 'package:app_gasfy/src/view/login_page.dart';
import 'package:flutter/material.dart';

import '../utils/app_fonts.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // Define un temporizador de 3 segundos
    Timer(Duration(seconds: 3), () {
      // Redirige a la página de inicio de sesión
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: const Center(
          child: Text(
              'Gasfy',
               style: AppFonts.lucidaRegular30,
          ),
      ),
    );
  }
}