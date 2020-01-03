import 'package:detonados/components/AppBar.dart';
import 'package:detonados/components/BottomBar.dart';
import 'package:detonados/components/RunsableCard.dart';
import 'package:detonados/pages/InfoPage.dart';
import 'package:detonados/pages/ListPage.dart';
import 'package:detonados/util/Constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<BottomNavigationBarItem> _items;
  int _pagSelect = 0;
  final _page = [
    ListPage(),
    InfoPage()
  ];

  @override
  void initState() {
    super.initState();
    //CRIANDO LISTA DE ITENS PARA A NAVEGACAO
    _items = new List();
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.list), title: new Text('Lista')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.info), title: new Text('Info')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(APP_NAME), centerTitle: true ),
      body: _page[_pagSelect],
      bottomNavigationBar: new  BottomNavigationBar(
        items: _items,
        fixedColor: Colors.white,
        currentIndex: _pagSelect,
        onTap: (int item){
          setState(() {
              _pagSelect = item;
          });
        }
      )
    );
  }
}
