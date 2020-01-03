import 'package:detonados/components/RunsableCard.dart';
import 'package:detonados/models/Detonado.dart';
import 'package:detonados/util/Constants.dart';
import 'package:detonados/util/mock/MockDetonados.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Detonado> _data;
  @override
  void initState() {
    super.initState();
    MockDetonados mockDetonados = new MockDetonados();
    _data = mockDetonados.detonados;
    print(_data.length);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(_data.length, (index){
            return  RunsableCard(color: Color(COLOR_CARD), detonado: _data[index]);
          },
        )
      )
    );
  }
}


