import 'package:detonados/models/Detonado.dart';
import 'package:detonados/pages/DetonadoPage.dart';
import 'package:flutter/material.dart';

class RunsableCard extends StatelessWidget {
  RunsableCard({@required this.color, @required this.detonado});

  final Color color;
  final Detonado detonado;

  void _detonado(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetonadoPage(link: detonado.link),
      ),
    );
  }

  @override
  Card build(BuildContext context) {
    return  Card(
      child: InkWell(
        onTap: () => _detonado(context),
        child: Container(
          margin: EdgeInsets.all(4.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10.0)
          ),
          child: Column(
            children: <Widget>[
              Expanded(child:  Image(image: NetworkImage(detonado.foto))),
              Text( detonado.titulo, style: new TextStyle(fontSize: 16, fontWeight: FontWeight.bold,   fontFamily: 'Soucer Sans Pro'))
            ],
          ),
        ),
      )
    );
  }
}