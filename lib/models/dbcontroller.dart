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
  /// Fahrzeug ID
  IntColumn get id => integer().autoIncrement()();

  /// Fahrzeughersteller
  TextColumn get manufacturer => text().withLength(max: 64)();

  /// Fahrzeugmodel
  // z.b. 316i beim BMW
  TextColumn get model => text().withLength(max: 64)();

  /// Fahrzeuggeneration
  // z.b. E36 bei BMW
  TextColumn get generation => text().nullable().withLength(max: 64)();

  /// Baudatum des Fahrzeugs
  DateTimeColumn get buildDate => dateTime().nullable()();

  /// Kilometerstand des Fahrzeugs
  // Wird durch Logs erhöht
  IntColumn get mileage => integer()();

  /// Kennzeichen
  TextColumn get licensePlate => text().withLength(max: 16).withDefault(const Constant(''))();

  /// Notizen
  TextColumn get notes => text().withLength(max: 512).withDefault(const Constant(''))();

  //Primary Tank
  /// Primärtanktreibstofftyp ID
  IntColumn get primaryFuelTypeId => integer().references(FuelType, #id)();

  /// Kapazität des Primärtanks
  RealColumn get primaryFuelCapacity => real()();

  //Secondary Tank
  /// Sekundärtanktreibstofftyp ID
  IntColumn get secondaryFuelTypeId => integer().nullable().references(FuelType, #id)();

  /// Kapazität des Sekundärtanks
  RealColumn get secondaryFuelCapacity => real().nullable()();

  // Kauf
  /// Kilometerstand zum Zeitpunkt des Kaufs
  IntColumn get buyMileage => integer().nullable()();

  /// Kaufdatum
  DateTimeColumn get buyDateTime => dateTime().nullable()();

  /// Kaufkosten
  RealColumn get buyPrice => real().nullable()();

  // Verkauf
  /// Kilometerstand zum Zeitpunkt des Verkaufs
  IntColumn get sellMileage => integer().nullable()();

  /// Verkaufsdatum
  DateTimeColumn get sellDateTime => dateTime().nullable()();

  /// Verkaufskosten
  RealColumn get sellPrice => real().nullable()();

  // @override // already the PK because of the autoincrement
  // Set<Column> get primaryKey => {id};
}

class Log extends Table {
  // General
  /// ID des Logs
  IntColumn get id => integer().autoIncrement()();

  /// Fahrzeug ID
  IntColumn get vehicleId => integer().references(Vehicle, #id)();

  /// Titel des Logs
  TextColumn get title => text().withLength(max: 128)();

  /// Notiz
  TextColumn get content => text()();

  /// Typ des Logs. Für farbkodierung der einzelnen Logs
  // Z.b. Tanklog, Reparaturlog, Versicherungslog, Autowaschlog, und viele mehr
  IntColumn get logTypeId => integer().references(LogType, #id)();

  /// Aktueller Kilometerstand zum Zeitpunkt des Logs;
  // So soll angezeigt werden können vor wievielen Kilometern der gleiche Typ des Logs angelegt wurde. Z.b. Letztes Tanklog vor 500km
  IntColumn get currentMileage => integer()();

  /// Zeitstempel des Logs
  DateTimeColumn get logTimestamp => dateTime()();

  /// Die Kosten die in dem Log verursacht wurden.
  // Ist generell für alle Arten gültig. Z.b. Bestellkosten, Tankkosten, Reparaturkosten, Versicherungskosten usw.
  RealColumn get cost => real().nullable()();

  // Fuel
  /// Kosten pro Einheit an Treibstoff
  RealColumn get costPerUnit => real().nullable()();

  /// Menge an eingefülltem Treibstoff
  RealColumn get refillAmount => real().nullable()();

  /// Falls der Füllstand des Tanks nicht bekannt ist.
  RealColumn get approxRefillPercentOfTank => real().nullable()();

  /// ID der Tankstelle an der getankt wurde
  // Andere Tankstellen sollen als vervollständigung beim tippen angeboten werden
  IntColumn get gasStationId => integer().references(GasStations, #id).nullable()();
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
