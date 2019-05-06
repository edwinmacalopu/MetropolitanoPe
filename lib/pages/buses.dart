import 'package:flutter/material.dart';
import 'package:metropolitanope/icons_metro_icons.dart';
class  Bus extends StatefulWidget {
  
  @override
  _BusState createState() => _BusState();
}

class _BusState extends State<Bus> {
  @override
  Widget build(BuildContext context) {
      
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(        
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('MetropolitanoPe',
          style: TextStyle(color: Colors.black,fontSize: 25,fontFamily: 'Quicksand'),
          )
      ),
      body:Container(        
        child: Stack(          
          children: <Widget>[  
             Container(
              color: Colors.blue,             
              ),            
              Container(
              color: Colors.yellow,
             height: 100,
              ),               
              _contenido(width),
              
          ],
        ),
            )
          
        
      );
       
    
   }

   Widget _contenido(width){
return Positioned(

               width:  width,             
                top: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                  
                      Container( 
                        width: width - 40,
                   color: Colors.red,                        
                  height: MediaQuery.of(context).size.height,
                      child: ListView(
                        
                      ),
                 ),
                    
                  ],
                )
              );
   }
   }