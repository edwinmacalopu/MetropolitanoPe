import 'package:flutter/material.dart';

class  Estacion extends StatefulWidget {
  @override
  _EstacionState createState() => _EstacionState();
}

class _EstacionState extends State<Estacion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Text('holaestaciones')
        ],
      ),
    );
  }
}