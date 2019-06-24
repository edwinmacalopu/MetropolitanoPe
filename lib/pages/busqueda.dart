import 'package:flutter/material.dart';
import 'package:metropolitanope/bd/database_helper.dart';
class  Busqueda extends StatefulWidget {
  

  _BusquedaState createState() => _BusquedaState();
}
 
  final dbHelper = DatabaseHelper.instance;


class _BusquedaState extends State<Busqueda> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child:Column(
         children: <Widget>[
           RaisedButton(
             onPressed: (){},
             child: Text('cccccccr'),
           ),
           RaisedButton(
             onPressed: (){
               _insertar();
             },
             child: Text('inserta datos'),
           ),
           RaisedButton(
             onPressed: (){
               _muestradatos();
             },
             child: Text('muestra datos'),
           )
           
         ],
       )
    );
  }

  void _insertar() async {
    // row to insert
    
  }


  void _muestradatos() async {
    final allRows = await dbHelper.queryAllRows();
    print('query all rows:');
    allRows.forEach((row) => print(row));
  }
}