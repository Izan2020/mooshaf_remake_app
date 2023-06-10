import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mooshaf_app/core/database/app_database.dart';

import 'package:mooshaf_app/core/models/surah.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

class QuranProvider extends ChangeNotifier {
  List<SurahModel> _listOfSurah = [];
  List<SurahModel> get listOfSurah => _listOfSurah;

  Future<String> copyDatabaseFile() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final dbPath = dbFolder.path;
    final databaseFile = File('$dbPath/database_quransuhuf.db');

    if (!await databaseFile.exists()) {
      final data = await rootBundle.load('assets/sql/database_quransuhuf.db');

      await databaseFile.writeAsBytes(data.buffer.asUint8List());
    }

    return databaseFile.path;
  }

  // TODO : FETCH DATA FROM .DB FILE
}
