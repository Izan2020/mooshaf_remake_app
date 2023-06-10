import 'package:floor/floor.dart';
import 'package:flutter/services.dart';
import 'package:mooshaf_app/core/models/surah.dart';

import '../models/quran.dart';

@dao
abstract class QuranDao {
  @Query("SELECT * FROM surah")
  Future<List<SurahModel>> getAllSurah();

  @Query("SELECT * FROM quran_database WHERE sora = :surahNumber")
  Future<List<QuranModel>> getAyahFromSurah(int surahNumber);
}
