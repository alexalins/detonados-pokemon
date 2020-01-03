import 'package:detonados/components/BottomBar.dart';
import 'package:detonados/pages/SplashPage.dart';
import 'package:detonados/router/NavigationRouter.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/",
        onGenerateRoute: NavigationRouter.gerarRotas,
        theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21)
        ),
        home: SplashPage(),
    );
  }
}

