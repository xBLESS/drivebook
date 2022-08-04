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

class GasStations extends Table {
  /// TankstellenID
  // Nur für Vorschläge in der gasStation Textbox im Tanklog
  IntColumn get id => integer().autoIncrement()();

  /// Tankstellenname
  TextColumn get name => text().unique()();
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
  IntColumn get mileage => integer()();
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
  IntColumn get buyMileage => integer().nullable()();
  DateTimeColumn get buyDateTime => dateTime().nullable()();
  RealColumn get buyPrice => real().nullable()();

  // Verkauf
  IntColumn get sellMileage => integer().nullable()();
  DateTimeColumn get sellDateTime => dateTime().nullable()();
  RealColumn get sellPrice => real().nullable()();

  IntColumn get currentTireGroupId =>
      integer().nullable().references(TireSetup, #id)();

  // @override // already the PK because of the autoincrement
  // Set<Column> get primaryKey => {id};
}

class Log extends Table {
  // General
  IntColumn get id => integer().autoIncrement()();
  IntColumn get vehicleId => integer().references(Vehicle, #id)();
  TextColumn get title => text().withLength(max: 128)();
  TextColumn get content => text()();
  IntColumn get logTypeId => integer().references(LogType, #id)();
  IntColumn get currentMileage => integer()();
  DateTimeColumn get logTimestamp => dateTime()();
  RealColumn get cost => real().nullable()();

  // Fuel
  RealColumn get costPerUnit => real().nullable()();
  RealColumn get refillAmount => real().nullable()();
  RealColumn get approxRefillPercentOfTank => real().nullable()();
  IntColumn get gasStationId =>
      integer().references(GasStations, #id).nullable()();

  // Tirechange
  IntColumn get tireSetupGroupId =>
      integer().nullable().references(TireSetup, #groupId)();
}

class Tire extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get vehicleId => integer().references(Vehicle, #id)();

  IntColumn get width => integer()();
  IntColumn get tireWall => integer()();
  IntColumn get wheelDiameter => integer()();

  TextColumn get manufacturer => text()();
  DateTimeColumn get dot => dateTime().nullable()();
}

class TireSetup extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get groupId => integer()();
  IntColumn get vehicleId => integer().references(Vehicle, #id)();
  IntColumn get tireId => integer().references(Tire, #id)();
  TextColumn get positionEnum => text()();
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

  //Todo Datenbankmigration schreiben, ist für Entwiklung aber unwichtig
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
