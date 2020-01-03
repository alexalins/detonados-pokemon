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
    _data = [ 0, 1, 2, 3];
    print(_data.length);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Expanded(
            child: new ListView.builder(
              itemCount: _data.length,
              itemBuilder: (BuildContext context , int index){
                return RunsableCard(color: Color(COLOR_CARD));
              },
            )
          ),
        ],
      ),
    );
  }
}


