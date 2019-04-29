import 'package:flutter/material.dart';

class  Estacion extends StatefulWidget {
  @override
  _EstacionState createState() => _EstacionState();
}

class _EstacionState extends State<Estacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('MetropolitanoPe',
          style: TextStyle(color: Colors.black,fontSize: 25,fontFamily: 'Quicksand'),
          )
      ),
    );
  }
}