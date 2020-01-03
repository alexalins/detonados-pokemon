import 'package:detonados/models/Detonado.dart';
import 'package:detonados/util/Constants.dart';
import 'package:flutter/material.dart';

class RunsableCard extends StatelessWidget {
  RunsableCard({@required this.color, @required this.detonado});

  final Color color;
  final Detonado detonado;

  @override
  Card build(BuildContext context) {
    return  Card(
      child:Container(
        margin: EdgeInsets.all(4.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)
        ),
        child: Column(
              children: <Widget>[
                Expanded(child:  Image(image: AssetImage('image/pokeball.png'))),
                Text( detonado.titulo, style: new TextStyle(fontSize: 16))
              ],
            ),
        )
    );
  }
}