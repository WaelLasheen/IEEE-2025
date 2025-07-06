import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_list/data/models/task.dart';
import 'package:todo_list/utils/consts/database_consts.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = await getDatabasesPath();
    String databasePath = join(path, '$databaseTableName.db');
    return await openDatabase(databasePath, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $databaseTableName(
        $databaseColumnId INTEGER PRIMARY KEY AUTOINCREMENT,
        $databaseColumnTitle TEXT,
        $databaseColumnDescription TEXT,
        $databaseColumnIsDone INTEGER
      )
    ''');
  }

  Future<int> insertTask(Task task) async {
    return _database!.insert(databaseTableName, task.toJson());
  }

  Future<List<Task>> fetchAll() async {
    final rows = await _database!.query(
      databaseTableName,
      orderBy: '$databaseColumnId ASC',
    );
    return rows.map((json) => Task.fromJson(json)).toList();
  }


  Future<int> updateTask(Task task) async {
    return _database!.update(
      databaseTableName,
      task.toJson(),
      where: '$databaseColumnId = ?',
      whereArgs: [task.id],
    );
  }

  Future<int> deleteTask(int id) async {
    return _database!.delete(
      databaseTableName,
      where: '$databaseColumnId = ?',
      whereArgs: [id],
    );
  }
}
