import 'package:flutter/material.dart';

class  Estacion extends StatefulWidget {
  @override
  _EstacionState createState() => _EstacionState();
}

class _EstacionState extends State<Estacion> {
  List<String> estaciones=["Naranjal","Izaguirre","Pacífico","Independencia","Los Jasminez","Tomas Valle","El Milagro","Honorio Delgado","UNI","Parque del Trabajo","Caquetá","Dos de Mayo","Quilca","España","Estación Central","Estadio Nacional","México","Canadá","Javier Prado","Canaval y Moreyra","Aramaburú","Domingo Orué","Angamos","Ricardo Palma","Benavides","28 de Julio","Plaza de Flores"];
//List<String> horarios=["Lunes a Domingos","Lunes a Domingos","Lunes a Domingos","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","Solo Sabados","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","","",""];
//List<String> desdea=["Naranjal - Est. Central","Naranjal - Matellini","Matellini - R. Castilla","Naranjal - Est. Central","Est. Central - Matellini","Naranjal - 28 de Julio","Naranjal - 28 de Julio","Naranjal - Plaza Flores","Naranjal - Plaza Flores","Izaguirre - Benavides","Tomás Valle - Angamos","Izaguirre - Plaza Flores","Uni - Bneavides","Naranjal - Ricardo Palma","Naranjal - Est. Central","","",""];
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
                width: MediaQuery.of(context).size.width - 20,
            child: Image(image: AssetImage('images/estacion.png')),
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
                        itemCount: estaciones.length,
                        itemBuilder: (context,index){                          
                          return Container(   
                            
                            child:GestureDetector(                                                                                                 
                            child: Card(                            
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  //SizedBox(
                                  //  width: 50,
                                 // ),
                                  
                                  Container(
                                     height: 70,
                                    child:  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                   children: <Widget>[
                                      Text('${estaciones[index]}',
                                        style: TextStyle(fontSize: 20),),
                                         
                                   ],
                                  ),
                                  )
                                ],
                              ),      
                            ),
                            onTap: (){
                              print(Text('${estaciones[index]}'));
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