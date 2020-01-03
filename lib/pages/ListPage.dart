import 'package:detonados/components/AppBar.dart';
import 'package:detonados/components/RunsableCard.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
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
    );
  }
}


