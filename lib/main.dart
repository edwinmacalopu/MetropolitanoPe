import 'package:flutter/material.dart';
import 'package:metropolitanope/icons_metro_icons.dart';
import 'package:metropolitanope/pages/buses.dart';
import 'package:metropolitanope/pages/busqueda.dart';
import 'package:metropolitanope/pages/estaciones.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Quicksand'),
    home: MetroHome(),
    ));
}  

class  MetroHome extends StatefulWidget {
  @override
  _MetroHomeState createState() => _MetroHomeState();
}

class _MetroHomeState extends State<MetroHome> {
  //static const Color transparent = Color(0x00000000);
  int _currentIndex=0;
  Widget callpage(int currentIndex){
    switch (currentIndex) {
      case 0:return Bus();
        case 1: return Estacion();
        case 2: return Busqueda();
        //case 3: return Estacion();
        break;
      default:return Bus();
    }
  }
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      
      resizeToAvoidBottomInset: false,    
      body: callpage(_currentIndex),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentIndex,
        onTap: (value){
          _currentIndex=value;
            setState(() {
              
            });
        },
        items: [  
          BottomNavigationBarItem(icon: Icon(IconsMetro.bus),title:Text('Buses')),
           BottomNavigationBarItem(icon: Icon(IconsMetro.location),title: Text('Estaciones')),
            BottomNavigationBarItem(icon: Icon(Icons.search),title: Text('Buscar')),
             //BottomNavigationBarItem(icon: Icon(Icons.search),title: Text('busqueda')),
        ],
      
        fixedColor: Colors.black,        
        backgroundColor: Colors.white,
      ),
    );
  }
 
   
}