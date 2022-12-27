import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:food_designing_ui/LoginScreen.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';


// we use DbHelper class because here we creat our table and store all queries related sqllite in this class
class DbHelper{

  // Create static and const variables to easily changing and initialize in compile time
  static const String db_name = "Mydatabase.db";
  static const db_version = 1;
  static const table_name = "SignupandLogin";

  static const Columnid = 'id';
  static const ColumnName = 'name';
  static const ColumnEmail = 'email';
  static const ColumnPass = 'pass';

  // Create static instance so that we can easily call DbHelper class
  static final DbHelper instance = DbHelper();

  // Create Database reference and it is used to store database path. here we use _ in front of database it means it is private
  static Database? _database;

   Future<Database?> get database async{

     _database ??= await initdb();
     return _database;

    // if(_database!=null){
    //   return _database;
    // }
    // else{
    //   _database = await initdb();
    //   return _database;
    // }

  }

  initdb() async{
     Directory directory = await getApplicationDocumentsDirectory();
     String path_of_database = join(directory.path,db_name);
     return openDatabase(path_of_database,version: db_version,onCreate: oncreate);
  }

  Future oncreate(Database db,int version) async{

     db.execute('''
     
     CREATE TABLE $table_name(
     $Columnid INTEGER PRIMARY KEY,
     $ColumnName TEXT NOT NULL,
     $ColumnEmail TEXT NOT NULL,
     $ColumnPass TEXT NOT NULL
     
     )   
     '''
         );
  }

   INSERT_DATA(Map<String,dynamic> rowdata) async{

     Database? db = await instance.database;

     return await db!.insert(table_name, rowdata);

  }

  Future <List<Map<String,dynamic>>> GET_DATA() async{

     Database? db = await instance.database;
     
    return await db!.query(table_name);
  }

  Future<int> UPDATE_DATA(Map<String,dynamic> rowdata) async{

    Database? db = await instance.database;
    int id = rowdata[Columnid];
     return await db!.update(table_name,rowdata,where: '$Columnid = ?', whereArgs: ['$id']);
  }

  Future<int> DELETE_DATA(Map<String,dynamic> rowdata) async{

    Database? db = await instance.database;
    String name = rowdata[ColumnName];
    return await db!.delete(table_name,where: '$ColumnName = ?', whereArgs: ['$name']);
  }

   Future<int?> CHECK_USER_EXIST_OR_NOT(Map<String,dynamic> rowdata) async{

    Database? db = await instance.database;
    String email = rowdata[ColumnEmail];
    String pass = rowdata[ColumnPass];


    List<Map> maps = await db!.query(table_name,
        columns: [ColumnEmail, ColumnPass],
        where: "$ColumnEmail = ? and $ColumnPass = ?",
        whereArgs: [email,pass]);

    print(maps);

    if (maps.length > 0) {
      print("User Exist !!!");
      return 1;
    }else {
      return 0;
    }
     
  }

}