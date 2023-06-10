// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorQuranDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$QuranDatabaseBuilder databaseBuilder(String name) =>
      _$QuranDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$QuranDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$QuranDatabaseBuilder(null);
}

class _$QuranDatabaseBuilder {
  _$QuranDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$QuranDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$QuranDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<QuranDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$QuranDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$QuranDatabase extends QuranDatabase {
  _$QuranDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  QuranDao? _quranDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 4,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `QuranModel` (`id` INTEGER NOT NULL, `juz` INTEGER NOT NULL, `surahNumber` INTEGER NOT NULL, `surahNameEN` TEXT NOT NULL, `surahNameAR` TEXT NOT NULL, `page` INTEGER NOT NULL, `lineStart` INTEGER NOT NULL, `lineEnd` INTEGER NOT NULL, `ayahNumber` INTEGER NOT NULL, `ayahTextAR` TEXT NOT NULL, `imlaText` TEXT NOT NULL, `translation` TEXT NOT NULL, `footNotes` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SurahModel` (`surahNumber` INTEGER NOT NULL, `surahNameAR` TEXT NOT NULL, `surahNameEN` TEXT NOT NULL, `totalAyah` INTEGER NOT NULL, PRIMARY KEY (`surahNumber`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  QuranDao get quranDao {
    return _quranDaoInstance ??= _$QuranDao(database, changeListener);
  }
}

class _$QuranDao extends QuranDao {
  _$QuranDao(
    this.database,
    this.changeListener,
  ) : _queryAdapter = QueryAdapter(database);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  @override
  Future<List<SurahModel>> getAllSurah() async {
    return _queryAdapter.queryList('SELECT * FROM surah',
        mapper: (Map<String, Object?> row) => SurahModel());
  }

  @override
  Future<List<QuranModel>> getAyahFromSurah(int surahNumber) async {
    return _queryAdapter.queryList(
        'SELECT * FROM quran_database WHERE sora = ?1',
        mapper: (Map<String, Object?> row) => QuranModel(),
        arguments: [surahNumber]);
  }
}
