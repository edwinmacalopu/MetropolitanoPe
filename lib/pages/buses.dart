import 'package:flutter/material.dart';
//import 'package:metropolitanope/icons_metro_icons.dart';
class  Bus extends StatefulWidget {
  
  @override
  _BusState createState() => _BusState();
}

class _BusState extends State<Bus> {

List<String> bustitle=["A","B","C","D","EX1","EX2","EX3","EX4","EX5","EX6","EX7","EX8","EX9","Sx","SXN","","",""];
List<String> horarios=["Lunes a Domingos","Lunes a Domingos","Lunes a Domingos","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","Solo Sabados","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","","",""];
List<String> desdea=["Naranjal - Est. Central","Naranjal - Matellini","Matellini - R. Castilla","Naranjal - Est. Central","Est. Central - Matellini","Naranjal - 28 de Julio","Naranjal - 28 de Julio","Naranjal - Plaza Flores","Naranjal - Plaza Flores","Izaguirre - Benavides","Tomás Valle - Angamos","Izaguirre - Plaza Flores","Uni - Bneavides","Naranjal - Ricardo Palma","Naranjal - Est. Central","","",""];
  @override
  Widget build(BuildContext context) {      
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(        
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        title: Text('MetropolitanoPe',
          style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Quicksand'),
          )
      ),
      body:Container(        
        child: Stack(          
          children: <Widget>[  
             Container(
              color: Color.fromARGB(-3, 245, 248, 254),             
              ),            
              Container(
              //color: Colors.blueAccent,
             height: 130,
             decoration: BoxDecoration(
               color: Colors.blueAccent,
               borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(40),
                 bottomRight: Radius.circular(40),
               ),
             ),
             //child: Image(image: AssetImage('resources/busmetro.png'),),
              ),  
              Container( 

                alignment: Alignment.center,         
                height:80,
                width: MediaQuery.of(context).size.width - 10,
            child: Image(image: AssetImage('images/bus.png')),
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
                top: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[                  
                      Container( 
                        width: width - 70,
                   color: Color(0x00000000),                
                  height: MediaQuery.of(context).size.height,
                      child: ListView.builder(                        
                        itemCount: bustitle.length,
                        itemBuilder: (context,index){                          
                          return Container(   
                            
                            child:GestureDetector(                                                                                                 
                            child: Card(                            
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 70,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.blueAccent,
                                      radius: 20,
                                       child: Text('${bustitle[index]}',style: TextStyle(color: Colors.white)),                         
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                     height: 70,
                                    child:  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                   children: <Widget>[
                                      Text('${horarios[index]}',
                                        style: TextStyle(fontSize: 14),),
                                        SizedBox(
                                          height: 8,
                                        ),
                                       Text('${desdea[index]}',
                                       style: TextStyle(fontSize: 10),
                                       ),
                                   ],
                                  ),
                                  )
                                ],
                              ),      
                            ),
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(
                                builder: (context)=>Busdetalle(detalle: bustitle[index],),
                              ));
                              //print(Text('${bustitle[index]}'));
                            },
                             )  ,                
                          );
                        },
                       
                      ),        
                 ),             
                  ],
                )
              );
   }
 
   }
     class Busdetalle extends StatefulWidget {
       final String detalle;
        Busdetalle({this.detalle});
     @override
     _BusdetalleState createState() => _BusdetalleState();
   }
   
   class _BusdetalleState extends State<Busdetalle> {

     List<String> C=["Ramon Castilla","Tacna","Jiron de la Union","Colmena","Estacion central"];
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.blueAccent,
           elevation: 0,
           title: Text(this.widget.detalle),
         ),
         body: Stack(
           children: <Widget>[            
             Container(
               
               height: 50,
                color: Colors.yellow,
             ),
            ListView.builder(
             itemCount: C.length,
             itemBuilder: (context,index){                
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                     CircleAvatar(
                       maxRadius: 5,
                       backgroundColor: Colors.red,
                     ),
                     Text(C[index],style: TextStyle(fontSize: 15),),
                   ],
                 );
                
             },
           ),
          
            
           ],
         ),
       );
     }
   }
