import 'package:flutter/material.dart';
//import 'package:metropolitanope/icons_metro_icons.dart';
class  Bus extends StatefulWidget {
  
  @override
  _BusState createState() => _BusState();
}

class _BusState extends State<Bus> {

List<String> bustitle=["A","B","C","D","EX1","EX1","EX2","EX2","EX3","EX3","EX4","EX7","EX8","EX9","Sx","SXN","","",""];
List<String> horarios=["Lunes a Domingos","Lunes a Domingos","Lunes a Domingos","Lunes a Viernes","Mañana","Tarde","Mañana","Tarde","Mañana - L a V","Tarde - L a V","Solo Sabados","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","Lunes a Viernes","","",""];
List<String> desdea=["Naranjal - Est. Central","Naranjal - Matellini","Matellini - R. Castilla","Naranjal - Est. Central","Est. Central - Matellini","Est. Central - Matellini","Naranjal - 28 de Julio","Naranjal - 28 de Julio","Naranjal - Plaza Flores","Naranjal - Plaza Flores","Izaguirre - Benavides","Tomás Valle - Angamos","Izaguirre - Plaza Flores","Uni - Bneavides","Naranjal - Ricardo Palma","Naranjal - Est. Central","","",""];
List<String> codbus=["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16"]; 
  @override
  Widget build(BuildContext context) {      
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(        
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        title: Text('MetropolitanoPe',
          style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'SourceSansPro-Bold'),
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
                                builder: (context)=>Busdetalle(detalle: bustitle[index],codbus:codbus[index]),
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
       final String codbus;
        //Busdetalle({this.detalle});
      Busdetalle({Key key, @required this.detalle,@required this.codbus}) : super(key: key);
  
     @override
     _BusdetalleState createState() => _BusdetalleState();
     
   }
   
   class _BusdetalleState extends State<Busdetalle> {
   @override
  void initState() { 
    super.initState();
    final String letrabus=this.widget.codbus;
    switch(letrabus) {
       case "1":
       detallebus=["Narananjal","Izaguirre","Pacífico","Independencia","Los Jasminez","Tomás Valle","El Milagro","Honorio Delgado","UNI","Parque del Trabajo","Caquetá","Castilla","Tacna","Jr de la Unión","Colmena","Est. Central"];
       break;
         case "2":
         detallebus=["Naranjal","Izaguirre","Pacífico","Independencia","Los Jasminez","Tomás Valle","El Milagro","Honorio Delgado","UNI","Parque del Trabajo","Caqueta","Dos de Mayo","Quilca","España","Est. Central","México","Canadá","Javier Prado","Canaval Moreyra","Aramburú","Domingo Orué","Angamos","Ricardo Palma","Benavides","28 de Julio","Plaza de Flores","Balta","Bulevar","Estadio Unión","Escuela Militar","Terán","Rosario de Villa","Matellini"];
           break;
         case "3":
         detallebus=["Ramon Castilla","Tacna","Jiron de la Union","Colmena","Estacion Central","Estadio Nacional","México","Canada","Javier Prado","Canaval y Moreyra","Aramburú","Domingo Orué","Angamos","Ricardo Palma","Benavides","28 de Julio","Plaza de Flores","Balta","Bulevar","Estadio Unión","Escuela Militar","Terán","Rosario de Villa","Matellini"];
         break;
          case "4":
         detallebus=["Naranjal","Izaguirre","Pacífico","Independencia","Los Jazmines","Tomás Valle","El Milagro","Honorio Delgado","UNI","Parque del Trabajo","Caqueta","Dos de Mayo","Quilca","España","Est. Central"];
         break;
         case "5":
         detallebus=["Est. Central","Estadio Nacional","Javier Prado","Canaval y Moreyra","Angamos","Ricardo Palma","28 de Julio","Balta","Bulevar","Estadio Unión","Escuela Militar","Terán","Rosario de Villa","Matellini"];
         break;
         case "6":
         detallebus=["Est. Central","Estadio Nacional","Javier Prado","Canaval y Moreyra","Angamos","Ricardo Palma","28 de Julio","Balta","Bulevar","Estadio Unión","Escuela Militar","Terán","Rosario de Villa","Matellini"];
          break;
          case "7":
         detallebus=["Naranjal","Canadá","Javier Prado","Ricardo Palma","28 de Julio"];
          break;
          case "8":
         detallebus=["solo de sur a norte"];
          break;
           case "9":
         detallebus=["Naranjal","Angamos","Benavides","28 de Julio"];
          break;
           case "10":
         detallebus=["solo de sur a norte"];
          break;
             case "11":
         detallebus=["Naranjal","Izaguirre","Tomás Valle","UNI","Caquetá","2 de Mayo","España","Est. Central","Javier Prado","Canaval y Moreyra","Angamos","Plaza Flores"];
          break;
       default:
       detallebus=[""];
     }
  }
String textobotton="Norte a Sur";
  void cambiartextobotton(){
    setState(() {
     if (textobotton=="Norte a Sur"){
          textobotton="Sur a Norte";
           final String letrabusur=this.widget.codbus;
    switch(letrabusur) {
       case "1":
       detallebus=["Est. Central","Colmena","Jr de la Unión","Tacna","Castilla","Caquetá","Parque del Trabajo","UNI","Honorio Delgado","El Milagro","Tomás Valle","Los Jasminez","Independencia","Pacífico","Izaguirre","Narananjal"];
       break;
         case "2":
         detallebus=["Matellini","Rosario de Villa","Terán","Escuela Militar","Estadio Unión","Bulevar","Balta","Plaza de Flores","28 de Julio","Benavides","Ricardo Palma","Angamos","Domingo Orué","Aramburú","Canaval Moreyra","Javier Prado","Canadá","México","Estadio Nacional","Est. Central","España","Quilca","Dos de Mayo","Caqueta","Parque del Trabajo","UNI","Honorio Delgado","El Milagro","Tomás Valle","Los Jasminez","Independencia","Pacífico","Izaguirre","Naranjal"];
           break;
         case "3":
         detallebus=["Matellini","Rosario de Villa","Terán","Escuela Militar","Estadio Unión","Bulevar","Balta","Plaza de Flores","28 de Julio","Benavides","Ricardo Palma","Angamos","Domingo Orué","Aramburú","Canaval Moreyra","Javier Prado","Canadá","México","Estadio Nacional","Est. Central","Colmena","Jirón de la Unión","Tacna","Ramón Castilla"];
         break;
          case "4":
         detallebus=["Est. Central","España","Quilca","2 de Mayo","Caquetá","Parque del Trabajo","UNI","Honorio Delgado","El Milagro","Tomás Valle","Los Jazmines","Independencia","Pacífico","Izaguirre","Naranjal"];
         break;
         case "5":
         detallebus=["Matellini","Rosario de Villa","Terán","Escuela Militar","Estadio Unión","Bulevar","Balta","28 de Julio","Angamos","Canaval y Moreyna","Javier Prado","Estadio Nacional","Est. Central"];
         break;
         case "6":
         detallebus=["Matellini","Rosario de Villa","Terán","Escuela Militar","Estadio Unión","Bulevar","Balta","28 de Julio","Ricardo Palma","Angamos","Javier Prado","Estadio Nacional","Est. Central"];
          break;
            case "7":
         detallebus=["Plaza Flores","Benavides","Angamos","Canaval y Moreyra","Javier Prado","Est. Central","España","Caqueta","UNI","Tomás Valle","Izaguirre","Naranjal"];
          break;
          case "8":
         detallebus=["Ricardo Palma","Javier Prado","Canadá","Naranjal"];
          break;
          case "9":
         detallebus=["solo de norte a sur"];
          break;
            case "10":
         detallebus=["benavides","Angamos","Naranjal"];
          break;
          case "11":
         detallebus=["Plaza Flores","Angamos","Canaval y Moreyra","Javier Prado","Est. Central","España","2 de mayo","Caquetá","UNI","Tomás Valle","Izaguirre","Naranjal"];
          break;
          

       default:
       detallebus=[""];
     }
     }else{
       textobotton="Norte a Sur";
        final String letrabusurs=this.widget.codbus;
       switch(letrabusurs) {
       case "1":
       detallebus=["Narananjal","Izaguirre","Pacífico","Independencia","Los Jasminez","Tomás Valle","El Milagro","Honorio Delgado","UNI","Parque del Trabajo","Caquetá","Castilla","Tacna","Jr de la Unión","Colmena","Est. Central"];
       break;
         case "2":
         detallebus=["Naranjal","Izaguirre","Pacífico","Independencia","Los Jasminez","Tomás Valle","El Milagro","Honorio Delgado","UNI","Parque del Trabajo","Caqueta","Dos de Mayo","Quilca","España","Est. Central","México","Canadá","Javier Prado","Canaval Moreyra","Aramburú","Domingo Orué","Angamos","Ricardo Palma","Benavides","28 de Julio","Plaza de Flores","Balta","Bulevar","Estadio Unión","Escuela Militar","Terán","Rosario de Villa","Matellini"];
           break;
         case "3":
         detallebus=["Ramon Castilla","Tacna","Jiron de la Union","Colmena","Estacion Central","Estadio Nacional","México","Canada","Javier Prado","Canaval y Moreyra","Aramburú","Domingo Orué","Angamos","Ricardo Palma","Benavides","28 de Julio","Plaza de Flores","Balta","Bulevar","Estadio Unión","Escuela Militar","Terán","Rosario de Villa","Matellini"];
         break;
          case "4":
         detallebus=["Naranjal","Izaguirre","Pacífico","Independencia","Los Jazmines","Tomás Valle","El Milagro","Honorio Delgado","UNI","Parque del Trabajo","Caqueta","Dos de Mayo","Quilca","España","Est. Central"];
         break;
         case "5":
         detallebus=["Est. Central","Estadio Nacional","Javier Prado","Canaval Moreyra","Angamos","Ricardo Palma","28 de Julio","Balta","Bulevar","Estadio Unión","Escuela Militar","Terán","Rosario de Villa","Matellini"];
         break;
         case "6":
         detallebus=["Est. Central","Estadio Nacional","Javier Prado","Canaval y Moreyra","Angamos","Ricardo Palma","28 de Julio","Balta","Bulevar","Estadio Unión","Escuela Militar","Terán","Rosario de Villa","Matellini"];
          break;
            case "7":
         detallebus=["Naranjal","Canadá","Javier Prado","Ricardo Palma","28 de Julio"];
          break;
          case "8":
         detallebus=["solo de sur a norte"];
          break;
          case "9":
         detallebus=["Naranjal","Angamos","Benavides","28 de Julio"];
          break;
           case "10":
          detallebus=["solo de sur a norte"];
          break;
            case "11":
         detallebus=["Naranjal","Izaguirre","Tomás Valle","UNI","Caquetá","2 de Mayo","España","Est. Central","Javier Prado","Canaval y Moreyra","Angamos","Plaza Flores"];
          break;
       default:
       detallebus=[""];
     }
     }

    });
  }
  

     List<String> detallebus;     
     
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
         builine(widths),
            botonswitch(),
           ],
         ),
         )
       );
     }
      Widget builcabecera(){
        return Container(
          
            height:100,
            color: Colors.blueAccent,
            
            );
      }

      Widget builcard(widths){
        return Positioned(
          width: widths,          
          top: 30,
          child: Column(          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                width: widths - 70,             
             height: MediaQuery.of(context).size.height -180 ,
              color: Colors.white,
           child: ListView.builder(
             itemCount: detallebus.length,
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
                      radius:7,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                    children: <Widget>[
                       Text('${detallebus[index]}',
                       style:TextStyle(fontSize: 17),)
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
          top: 30,          
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
          height: MediaQuery.of(context).size.height -180,
          color:
           Colors.blueAccent,
            )
          ],
        ),
        ),
        );
      }

      Widget botonswitch(){
        return Positioned(          
          width: MediaQuery.of(context).size.width,
              bottom: 5,
              child: Container(
                alignment: Alignment.center,
                child: Column(     
                               
                  children: <Widget>[
                    
                    RaisedButton(
                      
                  color: Colors.blueAccent,
                  onPressed: (){
                    cambiartextobotton();

                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    '$textobotton',style: TextStyle(color: Colors.white,fontSize: 20)
                    
                  ),
                )
                  ],
                ),
                 
              ),
        );
      }

   }