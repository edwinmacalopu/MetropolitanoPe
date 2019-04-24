import 'package:flutter/material.dart';
import 'package:metropolitanope/icons_metro_icons.dart';
void main(){
  runApp(MaterialApp(
    home: MetroHome(),
    ));
}  

class  MetroHome extends StatefulWidget {
  @override
  _MetroHomeState createState() => _MetroHomeState();
}

class _MetroHomeState extends State<MetroHome> {
 int _selectedIndex=1;
final _widgetOptions=[
  Text('Index 0: HOME'),
  Text('Index 1: HOME'),
  Text('Index 2: HOME')
];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home metropolitano'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(IconsMetro.bus),title:Text('Buses')),
           BottomNavigationBarItem(icon: Icon(IconsMetro.location),title: Text('bussines')),
            BottomNavigationBarItem(icon: Icon(Icons.school),title: Text('School')),

        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
      ),
    );
  }
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
}