import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  List<BottomNavigationBarItem> _items;

  @override
  void initState() {
    super.initState();
    //CRIANDO LISTA DE ITENS PARA A NAVEGACAO
    _items = new List();
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.featured_play_list), title: new Text('Lista')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.info), title: new Text('Info')));
  }

  @override
  Widget build(BuildContext context) {
    //RETORNANDO A BARRA DE NAVEGACAO
    return new BottomNavigationBar(
        items: _items,
        fixedColor: Colors.white
    );
  }

}
