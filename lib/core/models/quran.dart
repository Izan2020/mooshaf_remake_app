import 'package:floor/floor.dart';

@entity
class QuranModel {
  @primaryKey
  final int id = 0;
  final int juz = 0;
  final int surahNumber = 0;
  final String surahNameEN = "";
  final String surahNameAR = "";
  final int page = 0;
  final int lineStart = 0;
  final int lineEnd = 0;
  final int ayahNumber = 0;
  final String ayahTextAR = "";
  final String imlaText = "";
  final String translation = "";
  final String footNotes = "";
}
