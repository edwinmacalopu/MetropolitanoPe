import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper{

  static final _databaseName="metropo.db";
  static final _databaseVerion=1;
   static final table='buses';
   static final columId='_id';
   static final columName='bus';
   static final columAge='ruta';



   DatabaseHelper._privateConstructor();
   static final DatabaseHelper instance=DatabaseHelper._privateConstructor();

   static Database _database;
   Future<Database> get database async{
     if(_database!=null) return _database;

     _database=await _initDatabase();
     return _database;
   }

   _initDatabase() async{
     Directory documentsDirectory= await getApplicationDocumentsDirectory();
     String path=join(documentsDirectory.path,_databaseName);
     return await openDatabase(path,version:_databaseVerion,onCreate: _onCreate);
   }

   Future _onCreate(Database db,int version)async{
     await db.execute('''CREATE TABLE $table($columId INTEGER PRIMARY KEY,$columName TEXT NOT NULL,$columAge TEXT NOT NULL)''');
   }

 Future<int> insert(Map<String,dynamic> row)async{
   Database db=await instance.database;
   return await db.insert(table, row);

 }

 Future<List<Map<String,dynamic>>> queryAllRows() async{
   Database db=await instance.database;
   return await db.query(table);
 }
 

}
