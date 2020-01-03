import 'package:detonados/components/AppBar.dart';
import 'package:detonados/components/RunsableCard.dart';
import 'package:detonados/util/Constants.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _data;
  @override
  void initState() {
    super.initState();
    _data = [ 0, 1, 2, 3, 4];
    print(_data.length);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[
          Expanded(
            child: new ListView.builder(
              itemCount: (_data.length/2).round(),
              itemBuilder: (BuildContext context , int index){
                return Row(
                  children: <Widget>[
                    Expanded(child:  RunsableCard(color: Color(COLOR_CARD))),
                    Expanded(child:  RunsableCard(color: Color(COLOR_CARD)))
                  ],
                );
              },
            )
          ),
        ],
      ),
    );
  }
}


