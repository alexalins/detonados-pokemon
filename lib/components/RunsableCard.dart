import 'package:flutter/material.dart';

class RunsableCard extends StatelessWidget {
  RunsableCard({@required this.color});

  final Color color;

  @override
  Card build(BuildContext context) {
    return  Card(
      child:Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}