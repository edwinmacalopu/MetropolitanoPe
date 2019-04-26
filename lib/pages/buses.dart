import 'package:flutter/material.dart';

class  Bus extends StatefulWidget {
  @override
  _BusState createState() => _BusState();
}

class _BusState extends State<Bus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('MetropolitanoPe',
          style: TextStyle(color: Colors.black,fontSize: 25,fontFamily: 'Quicksand'),
          )
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
              _apbarbus(),
          ],
        ),
        ),
    );
  }

  Widget _apbarbus(){
    return Container(
      
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,         
         children: <Widget>[                
           ButtonTheme(
             height: 80.0,
             buttonColor: Colors.black,
             child: RaisedButton(             
             onPressed: (){},
             textColor: Colors.white,
             child: Text('X6',
             style: TextStyle(fontSize: 15),
             ),
           ),
           ),          
           
            RaisedButton(
             onPressed: (){},
             textColor: Colors.blue,
             child: Text('X6'),
           ),
            RaisedButton(
             onPressed: (){},
             textColor: Colors.blue,
             child: Text('X6'),
           ),
          
         ],
       ), 
           
    );
    
  }
}