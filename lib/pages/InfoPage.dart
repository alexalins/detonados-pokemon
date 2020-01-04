import 'package:detonados/pages/DetonadoPage.dart';
import 'package:detonados/util/Constants.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {

  void _webView(String link) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetonadoPage(link: link),
      ),
    );
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
                new Text('Desenvolvido por Alexa Lins', style: new TextStyle(fontSize: 22, fontWeight: FontWeight.bold,  fontFamily: 'Soucer Sans Pro')),
                new SizedBox( height: 20.0, width: 350.0, child: Divider(color: Colors.teal.shade100)),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new FlatButton(onPressed: () => _webView('https://github.com/alexalins'), child: Icon(MdiIcons.githubCircle)),
                    new FlatButton(onPressed: () => _webView('https://twitter.com/aglinsoo'), child: Icon(MdiIcons.twitter)),
                  ],
                ),
                new SizedBox( height: 20.0, width: 350.0, child: Divider(color: Colors.teal.shade100)),
                new FlatButton(onPressed: () => _webView('https://pokemythology.net/'), child: new Text('Dados de Pokémon Mythology', style: new TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'Soucer Sans Pro')))
              ],
            ),
          )
      ),
    );
  }
}
