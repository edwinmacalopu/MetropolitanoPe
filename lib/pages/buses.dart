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
final String someText = 
"horarios\n"
"L - V :5:20 am - 11:00 pm\n"
"S :5:30 am - 10:55 pm\n"
"D :5:25 am - 10:00 pm\n"
;
     List<String> C=["Ramon Castilla","Tacna","Jiron de la Union","Colmena","Estacion Central","Estadio Nacional","México","Canada","Javier Prado","Canaval y Moreyra","Aramburú","Domingo Orué","Angamos","Ricardo Palma","Benavides","28 de Julio","Plaza de Flores","Balta","Bulevar","Estadio Unión","Escuela Militar","Terán","Rosario de Villa","Matellini"];
     @override
     Widget build(BuildContext context) {
       double widths = MediaQuery.of(context).size.width;
       return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.blueAccent,
           elevation: 0,
           title: Text(this.widget.detalle),
         ),
         body: Container(                 
           child:Stack(
           children: <Widget>[  
             Container(
               color:Color.fromARGB(-3, 245, 248, 254),  
             ),
             builcabecera(),
         builcard(widths),
         builine(widths)
            
           ],
         ),
         )
       );
     }
      Widget builcabecera(){
        return Container(
            height:100,
            color: Colors.blueAccent,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(                 
                  children: <Widget>[
                    Text('Norte a Sur',style: TextStyle(color: Colors.white),),
                    Text('$someText',style: TextStyle(color: Colors.white),),
                   
                  ],
                ),
                 Column(
                  children: <Widget>[
                    Text('Sur a Norte',style: TextStyle(color: Colors.white),),
                    Text('horarios',style: TextStyle(color: Colors.white),),
                    Text('L - V :5:20 am - 11:00 pm',style: TextStyle(color: Colors.white),),
                     Text('S :5:30 am - 10:55 pm',style: TextStyle(color: Colors.white),),
                      Text('D :5:25 am - 10:00 pm',style: TextStyle(color: Colors.white),),
                  ],
                )
              ],
            ),
            );
      }

      Widget builcard(widths){
        return Positioned(
          width: widths,
          top: 80,
          child: Column(          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                width: widths - 70,             
             height: MediaQuery.of(context).size.height -150 ,
              color: Colors.white,
           child: ListView.builder(
             itemCount: C.length,
            itemBuilder: (context,index){
              return Card(
                elevation: 0,
                child:Row(
                  children: <Widget>[
                    SizedBox(
                      width: 14,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 7,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                    children: <Widget>[
                       Text('${C[index]}')
                    ], 
                                     
                 
                    ),
                     SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                
              );
              
            },
           ),
          
          
        )
          ],
        
        ) ,
        );
      }

      Widget builine(widths){
        
        return Positioned(
          //width: widths -150,
          top: 50,
          
          child: Align(
        alignment:  Alignment.center,
      
        child: Column(  
             
          children: <Widget>[
            SizedBox(
              width: 120,
            ),
            Container(
              alignment: Alignment.center,
              width: 2.0,
          height: MediaQuery.of(context).size.height -150,
          color:
           Colors.blueAccent,
            )
          ],
        ),
        ),
        );
      }

   }