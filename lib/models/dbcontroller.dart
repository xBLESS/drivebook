import 'dart:io';

import 'package:drift/drift.dart';

import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'dbcontroller.g.dart';

class FuelType extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get fuel => text().withLength(max: 32)();
}

class LogType extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get type => text()();
  TextColumn get color => text()();
}

class Vehicle extends Table {
  //Update Database
  //dbcontroller.g.dart vorher löschen und dann flutter pub run build_runner build

  //Fahrzeug
  IntColumn get id => integer().autoIncrement()();
  TextColumn get manufacturer => text().withLength(max: 64)();
  TextColumn get model => text().withLength(max: 64)();
  TextColumn get generation => text().nullable().withLength(max: 64)();
  DateTimeColumn get buildDate => dateTime().nullable()();
  IntColumn get odometer => integer()();
  TextColumn get licensePlate =>
      text().withLength(max: 16).withDefault(const Constant(''))();
  TextColumn get notes =>
      text().withLength(max: 512).withDefault(const Constant(''))();

  //Primary Tank
  IntColumn get primaryFuelTypeId => integer().references(FuelType, #id)();
  RealColumn get primaryFuelCapacity => real()();

  //Secondary Tank
  IntColumn get secondaryFuelTypeId =>
      integer().nullable().references(FuelType, #id)();
  RealColumn get secondaryFuelCapacity => real().nullable()();

  // Kauf
  IntColumn get buyOdometer => integer().nullable()();
  DateTimeColumn get buyDateTime => dateTime().nullable()();
  RealColumn get buyPrice => real().nullable()();

  // Verkauf
  IntColumn get sellOdometer => integer().nullable()();
  DateTimeColumn get sellDateTime => dateTime().nullable()();
  RealColumn get sellPrice => real().nullable()();

  // @override // already the PK because of the autoincrement
  // Set<Column> get primaryKey => {id};

  //Todo Datenbankmigration schreiben, ist für Entwiklung aber unwichtig
}

class Log extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(max: 128)();
  TextColumn get content => text()();

  IntColumn get logTypeId => integer().references(LogType, #id)();
  IntColumn get odometer => integer()();
  DateTimeColumn get logTimestamp => dateTime()();
}

@DriftDatabase(tables: [Vehicle])
class DBController extends _$DBController {
  // we tell the database where to store the data with this constructor
  DBController() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 1;

  Future<int> addVehicle(VehicleCompanion entry) => into(vehicle).insert(entry);

  Future<List<VehicleData>> get getAllVehicles async => select(vehicle).get();

  Stream<List<VehicleData>> watchVehicles() => select(vehicle).watch();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    // Datenbankänderung aller art -> Untere zeile auskommentieren und
    // file.delete();

    return NativeDatabase(file);
  });
}
