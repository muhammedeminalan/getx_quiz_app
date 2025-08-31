// services/SQL/database_helper.dart

import 'dart:io';
import 'package:flutter/services.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper _instance = DatabaseHelper._privateConstructor();
  factory DatabaseHelper() => _instance;

  static const String _dbName = "database.db";
  static const String _assetPath = "lib/database/$_dbName";

  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    final dbPath = await getDatabasesPath();
    final path = join(dbPath, _dbName);

    final exists = await databaseExists(path);

    if (!exists) {
      await _copyDatabaseFromAssets(path);
    }

    _database = await openDatabase(path);
    return _database!;
  }

  Future<void> _copyDatabaseFromAssets(String path) async {
    final data = await rootBundle.load(_assetPath);
    final bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(path).writeAsBytes(bytes, flush: true);
  }

  Future<List<Question>> getAllQuestions() async {
    final db = await database;
    final maps = await db.query('questions');
    return maps.map((q) => Question.fromMap(q)).toList();
  }
}