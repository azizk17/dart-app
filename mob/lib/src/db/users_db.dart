import 'package:common/common.dart' show UsersDB;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'dart:async';

class UsersLocalDB implements UsersDB {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Database db;
  init() async {
    Directory documentDir = await getApplicationDocumentsDirectory();
    final path = join(documentDir.path, 'app.db');
    db = await openDatabase(
      path,
      version: 1,
      onCreate: (Database newDb, int version) {
        newDb.execute("""
          CREATE TABEL Groups
          (
            id TEXT PRIMARY KEY,
            name TEXT,
            created_at DATE,
            avatar TEXT
          )
        
        """);
      },
    );
  }

  @override
  clear() {
    // TODO: implement clear
    return null;
  }

  @override
  getItem(String id) async {
    final maps = await db.query(
      "Groups",
      columns: null,
      where: "id = ?",
      whereArgs: [id],
    );
  }

  @override
  isExist(String id) {
    // TODO: implement isExist
    return true;
  }
}
