import 'package:flutter/material.dart';
import 'package:metropolitanope/icons_metro_icons.dart';
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
      height: 880,
      child:ListView(
        children:<Widget>[
           
           SizedBox(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[             
                   SizedBox(
                     height: 70,
                     width: 120,                                       
                       child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30.0),
                       ),
                         color: Colors.white,
                         onPressed: (){},
                         child: Container(
                           child: Row(
                             children: <Widget>[
                                    CircleAvatar(                  
                 backgroundColor: Color.fromARGB(-12,187, 222, 251),
                 child: Icon(IconsMetro.bus,color: Color.fromARGB(-79, 41,121,255),),
                   radius: 20) ,
                   SizedBox(
                     width: 20,
                   ),
                  Text('A',
                  style: TextStyle(fontSize: 22)),
                     
                             ],
                           ),
                         ),
                       )
                       
                     ),
                     SizedBox(
                     height: 70,
                     width: 120,                                       
                       child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20.0),
                       ),
                         color: Colors.white,
                         onPressed: (){},
                         child: Container(
                           child: Row(
                             children: <Widget>[
                                    CircleAvatar(                  
                  backgroundColor: Color.fromARGB(-12,187, 222, 251),
                 child: Icon(IconsMetro.bus,color: Color.fromARGB(-79, 41,121,255),),
                   radius: 20) ,
                   SizedBox(
                     width: 10,
                   ),
                   Text('B',
                  style: TextStyle(fontSize: 22)),
                     
                             ],
                           ),
                         ),
                       )
                       
                     )
                 
                  
             ]        
          
        
          ),
          SizedBox(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[             
                   SizedBox(
                     height: 70,
                     width: 120,                                       
                       child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30.0),
                       ),
                         color: Colors.white,
                         onPressed: (){},
                         child: Container(
                           child: Row(
                             children: <Widget>[
                                    CircleAvatar(                  
                backgroundColor: Color.fromARGB(-12,187, 222, 251),
                 child: Icon(IconsMetro.bus,color: Color.fromARGB(-79, 41,121,255),),
                   radius: 20) ,
                   SizedBox(
                     width: 20,
                   ),
                  Text('C',
                  style: TextStyle(fontSize: 22)),
                     
                             ],
                           ),
                         ),
                       )
                       
                     ),
                     SizedBox(
                     height: 70,
                     width: 120,                                       
                       child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20.0),
                       ),
                         color: Colors.white,
                         onPressed: (){},
                         child: Container(
                           child: Row(
                             children: <Widget>[
                                    CircleAvatar(                  
                 backgroundColor: Color.fromARGB(-12,187, 222, 251),
                 child: Icon(IconsMetro.bus,color: Color.fromARGB(-79, 41,121,255),),
                   radius: 20) ,
                   SizedBox(
                     width: 10,
                   ),
                   Text('D',
                  style: TextStyle(fontSize: 22)),
                     
                             ],
                           ),
                         ),
                       )
                       
                     )
                 
                  
             ]        
          
        
          ),
          SizedBox(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[             
                   SizedBox(
                     height: 70,
                     width: 120,                                       
                       child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30.0),
                       ),
                         color: Colors.white,
                         onPressed: (){},
                         child: Container(
                           child: Row(
                             children: <Widget>[
                                    CircleAvatar(                  
                backgroundColor: Color.fromARGB(-32,185, 246, 202),
                 child: Icon(IconsMetro.bus,color: Color.fromARGB(-108,0,230,118),),
                   radius: 20) ,
                   SizedBox(
                     width: 20,
                   ),
                  Text('EX 1',
                  style: TextStyle(fontSize: 13)),
                     
                             ],
                           ),
                         ),
                       )
                       
                     ),
                     SizedBox(
                     height: 70,
                     width: 120,                                       
                       child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20.0),
                       ),
                         color: Colors.white,
                         onPressed: (){},
                         child: Container(
                           child: Row(
                             children: <Widget>[
                                    CircleAvatar(                  
                 backgroundColor: Color.fromARGB(-32,185, 246, 202),
                 child: Icon(IconsMetro.bus,color: Color.fromARGB(-108,0,230,118),),
                   radius: 20) ,
                   SizedBox(
                     width: 10,
                   ),
                   Text('EX 2',
                  style: TextStyle(fontSize: 10)),
                     
                             ],
                           ),
                         ),
                       )
                       
                     )
                 
                  
             ]        
          
        
          ),
          
          SizedBox(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[             
                   SizedBox(
                     height: 70,
                     width: 120,                                       
                       child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30.0),
                       ),
                         color: Colors.white,
                         onPressed: (){},
                         child: Container(
                           child: Row(
                             children: <Widget>[
                                    CircleAvatar(                  
                backgroundColor: Color.fromARGB(-32,185, 246, 202),
                 child: Icon(IconsMetro.bus,color: Color.fromARGB(-108,0,230,118),),
                   radius: 20) ,
                   SizedBox(
                     width: 20,
                   ),
                  Text('EX 3',
                  style: TextStyle(fontSize: 10)),
                     
                             ],
                           ),
                         ),
                       )
                       
                     ),
                     SizedBox(
                     height: 70,
                     width: 120,                                       
                       child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20.0),
                       ),
                         color: Colors.white,
                         onPressed: (){},
                         child: Container(
                           child: Row(
                             children: <Widget>[
                                    CircleAvatar(                  
                 backgroundColor: Color.fromARGB(-32,185, 246, 202),
                 child: Icon(IconsMetro.bus,color: Color.fromARGB(-108,0,230,118),),
                   radius: 20) ,
                   SizedBox(
                     width: 10,
                   ),
                   Text('EX 4',
                  style: TextStyle(fontSize: 10)),
                     
                             ],
                           ),
                         ),
                       )
                       
                     )
                 
                  
             ]        
          
        
          ),
          
          SizedBox(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[             
                   SizedBox(
                     height: 70,
                     width: 120,                                       
                       child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30.0),
                       ),
                         color: Colors.white,
                         onPressed: (){},
                         child: Container(
                           child: Row(
                             children: <Widget>[
                                    CircleAvatar(                  
                backgroundColor: Color.fromARGB(-32,185, 246, 202),
                 child: Icon(IconsMetro.bus,color: Color.fromARGB(-108,0,230,118),),
                   radius: 20) ,
                   SizedBox(
                     width: 20,
                   ),
                  Text('EX 5',
                  style: TextStyle(fontSize: 10)),
                     
                             ],
                           ),
                         ),
                       )
                       
                     ),
                     SizedBox(
                     height: 70,
                     width: 120,                                       
                       child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20.0),
                       ),
                         color: Colors.white,
                         onPressed: (){},
                         child: Container(
                           child: Row(
                             children: <Widget>[
                                    CircleAvatar(                  
                 backgroundColor: Color.fromARGB(-32,185, 246, 202),
                 child: Icon(IconsMetro.bus,color: Color.fromARGB(-108,0,230,118),),
                   radius: 20) ,
                   SizedBox(
                     width: 10,
                   ),
                   Text('EX 6',
                  style: TextStyle(fontSize: 10)),
                     
                             ],
                           ),
                         ),
                       )
                       
                     )
                 
                  
             ]        
          
        
          ),
          
          SizedBox(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[             
                   SizedBox(
                     height: 70,
                     width: 120,                                       
                       child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30.0),
                       ),
                         color: Colors.white,
                         onPressed: (){},
                         child: Container(
                           child: Row(
                             children: <Widget>[
                                    CircleAvatar(                  
                backgroundColor: Color.fromARGB(-32,185, 246, 202),
                 child: Icon(IconsMetro.bus,color: Color.fromARGB(-108,0,230,118),),
                   radius: 20) ,
                   SizedBox(
                     width: 20,
                   ),
                  Text('EX 7',
                  style: TextStyle(fontSize: 10)),
                     
                             ],
                           ),
                         ),
                       )
                       
                     ),
                     SizedBox(
                     height: 70,
                     width: 120,                                       
                       child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20.0),
                       ),
                         color: Colors.white,
                         onPressed: (){},
                         child: Container(
                           child: Row(
                             children: <Widget>[
                                    CircleAvatar(                  
                 backgroundColor: Color.fromARGB(-32,185, 246, 202),
                 child: Icon(IconsMetro.bus,color: Color.fromARGB(-108,0,230,118),),
                   radius: 20) ,
                   SizedBox(
                     width: 10,
                   ),
                   Text('EX 8',
                  style: TextStyle(fontSize: 10)),
                     
                             ],
                           ),
                         ),
                       )
                       
                     )
                 
                  
             ]        
          
        
          ),
            
            
           //SizedBox(height: 80,
           //width: 50,
              
     
        ]
           ),
           );
  }
}