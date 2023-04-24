import 'package:app_gasfy/src/utils/global.colors.dart';
import 'package:app_gasfy/src/view/splash.view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
        // Aquí se define el color del ActionBar
          primarySwatch: GlobalColors.mainColor.toMaterialColor(),
        ),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}