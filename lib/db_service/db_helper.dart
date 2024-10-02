import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper{
  Database? _database;

  Future<Database?> get database async{
    if(_database != null){
      return _database;
    }

    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path,('bangladeshtwopointzerodatabase.db'));
    _database = await openDatabase(path,version: 1,onCreate: (db, version)async{
      await db.execute('CREATE TABLE DiedList (id INTEGER PRIMARY KEY, title TEXT, died_date TEXT, description TEXT)');
    });
    return _database;
  }

  Future<void> addnote(context, String? title, String? died_date, String? description)async{
    //Database Data Insert
    Database? db = await database;
    db?.insert('DiedList',
    {
      'title' : title,
      'died_date' : died_date,
      'description' : description,
    }
    );
    var snackBar = const SnackBar(content: Text('Your Items Request Added successfully '));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  //Local Database All Data Red
  Future<dynamic> readdiedItems()async{
    Database? db = await database;
    final list = db?.query('DiedList');
    return list;
  }
}