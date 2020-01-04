import 'package:detonados/util/Constants.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {

  void _git() {
    print('https://github.com/alexalins');
  }

  void _twitter() {
    print('https://twitter.com/alexalins');
  }

  void _pokemonMythology() {
    print('https://pokemonmythology.com/');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          child: Container(
              margin: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  color: Color(COLOR_CARD), borderRadius: BorderRadius.circular(10.0)
              ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Text('Desenvolvido por Alexa Lins', style: new TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new FlatButton(onPressed: () => _git(), child: new Icon(Icons.link)),
                    new FlatButton(onPressed: () => _twitter(), child: new Icon(Icons.videogame_asset)),
                  ],
                ),
                new FlatButton(onPressed: () => _pokemonMythology(), child: new Text('Dados de Pokémon Mythology', style: new TextStyle(fontSize: 16, fontWeight: FontWeight.bold)))
              ],
            ),
          )
      ),
    );
  }
}
