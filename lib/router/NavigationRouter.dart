import 'package:detonados/pages/DetonadoPage.dart';
import 'package:detonados/pages/HomePage.dart';
import 'package:detonados/pages/InfoPage.dart';
import 'package:detonados/pages/ListPage.dart';
import 'package:detonados/pages/SplashPage.dart';
import 'package:flutter/material.dart';

class NavigationRouter {

  static Route<dynamic> gerarRotas(RouteSettings settings){
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (_) => SplashPage()
        );
      case "/home":
        return MaterialPageRoute(
            builder: (_) => HomePage()
        );
      case "/list":
        return MaterialPageRoute(
            builder: (_) => ListPage()
        );
      case "/info":
        return MaterialPageRoute(
            builder: (_) => InfoPage()
        );
      case "/detonado":
        return MaterialPageRoute(
            builder: (_) => DetonadoPage()
        );
      default:
        _erroRota();
    }

  }

  static Route<dynamic> _erroRota(){
    return MaterialPageRoute(
        builder: (_){
          return Scaffold(
            appBar: AppBar(title: Text("Tela não encontrada!"),),
            body: Center(
              child: Text("Tela não encontrada!"),
            ),
          );
        }
    );
  }

}