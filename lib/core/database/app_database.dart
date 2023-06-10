import 'dart:async';

import 'package:floor/floor.dart';
import 'package:mooshaf_app/core/database/quran_dao.dart';
import 'package:mooshaf_app/core/models/quran.dart';
import 'package:mooshaf_app/core/models/surah.dart';

import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart';

@Database(version: 5, entities: [QuranModel, SurahModel])
abstract class QuranDatabase extends FloorDatabase {
  QuranDao get quranDao;
}
