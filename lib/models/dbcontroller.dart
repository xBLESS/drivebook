import 'dart:io';

import 'package:drift/drift.dart';

import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'dbcontroller.g.dart';

class Vehicle extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get manufacturer => text().withLength(max: 64)();
  TextColumn get model => text().withLength(max: 64)();
  DateTimeColumn get buildDate => dateTime().nullable()();
  IntColumn get odometer => integer().withDefault(const Constant(0))();

  // @override // already the PK because of the autoincrement
  // Set<Column> get primaryKey => {id};
}

class Todo extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(max: 128)();
  TextColumn get content => text()();
}

@DriftDatabase(tables: [Vehicle])
class DBController extends _$DBController {
  // we tell the database where to store the data with this constructor
  DBController() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 3;

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
    return NativeDatabase(file);
  });
}
