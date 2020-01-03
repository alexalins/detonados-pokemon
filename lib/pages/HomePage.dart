import 'package:detonados/components/AppBar.dart';
import 'package:detonados/components/BottomBar.dart';
import 'package:detonados/components/RunsableCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //BARRA DE NAVEGACAO
  BottomBar _myBottomBar = new BottomBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: RunsableCard(color: Color(0xFF1D1E33))),
                Expanded(child: RunsableCard(color: Color(0xFF1D1E33))),
              ],
            ),
          )
        ],
        ),
      //CHAMANDO COMPONENTE DA BARRA
      bottomNavigationBar: _myBottomBar,
    );
  }
}
