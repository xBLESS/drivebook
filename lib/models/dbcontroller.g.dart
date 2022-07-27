// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dbcontroller.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class VehicleData extends DataClass implements Insertable<VehicleData> {
  final int id;
  final String manufacturer;
  final String model;
  final DateTime? buildDate;
  final int odometer;
  VehicleData(
      {required this.id,
      required this.manufacturer,
      required this.model,
      this.buildDate,
      required this.odometer});
  factory VehicleData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return VehicleData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      manufacturer: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}manufacturer'])!,
      model: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}model'])!,
      buildDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}build_date']),
      odometer: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}odometer'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['manufacturer'] = Variable<String>(manufacturer);
    map['model'] = Variable<String>(model);
    if (!nullToAbsent || buildDate != null) {
      map['build_date'] = Variable<DateTime?>(buildDate);
    }
    map['odometer'] = Variable<int>(odometer);
    return map;
  }

  VehicleCompanion toCompanion(bool nullToAbsent) {
    return VehicleCompanion(
      id: Value(id),
      manufacturer: Value(manufacturer),
      model: Value(model),
      buildDate: buildDate == null && nullToAbsent
          ? const Value.absent()
          : Value(buildDate),
      odometer: Value(odometer),
    );
  }

  factory VehicleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VehicleData(
      id: serializer.fromJson<int>(json['id']),
      manufacturer: serializer.fromJson<String>(json['manufacturer']),
      model: serializer.fromJson<String>(json['model']),
      buildDate: serializer.fromJson<DateTime?>(json['buildDate']),
      odometer: serializer.fromJson<int>(json['odometer']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'manufacturer': serializer.toJson<String>(manufacturer),
      'model': serializer.toJson<String>(model),
      'buildDate': serializer.toJson<DateTime?>(buildDate),
      'odometer': serializer.toJson<int>(odometer),
    };
  }

  VehicleData copyWith(
          {int? id,
          String? manufacturer,
          String? model,
          DateTime? buildDate,
          int? odometer}) =>
      VehicleData(
        id: id ?? this.id,
        manufacturer: manufacturer ?? this.manufacturer,
        model: model ?? this.model,
        buildDate: buildDate ?? this.buildDate,
        odometer: odometer ?? this.odometer,
      );
  @override
  String toString() {
    return (StringBuffer('VehicleData(')
          ..write('id: $id, ')
          ..write('manufacturer: $manufacturer, ')
          ..write('model: $model, ')
          ..write('buildDate: $buildDate, ')
          ..write('odometer: $odometer')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, manufacturer, model, buildDate, odometer);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VehicleData &&
          other.id == this.id &&
          other.manufacturer == this.manufacturer &&
          other.model == this.model &&
          other.buildDate == this.buildDate &&
          other.odometer == this.odometer);
}

class VehicleCompanion extends UpdateCompanion<VehicleData> {
  final Value<int> id;
  final Value<String> manufacturer;
  final Value<String> model;
  final Value<DateTime?> buildDate;
  final Value<int> odometer;
  const VehicleCompanion({
    this.id = const Value.absent(),
    this.manufacturer = const Value.absent(),
    this.model = const Value.absent(),
    this.buildDate = const Value.absent(),
    this.odometer = const Value.absent(),
  });
  VehicleCompanion.insert({
    this.id = const Value.absent(),
    required String manufacturer,
    required String model,
    this.buildDate = const Value.absent(),
    this.odometer = const Value.absent(),
  })  : manufacturer = Value(manufacturer),
        model = Value(model);
  static Insertable<VehicleData> custom({
    Expression<int>? id,
    Expression<String>? manufacturer,
    Expression<String>? model,
    Expression<DateTime?>? buildDate,
    Expression<int>? odometer,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (model != null) 'model': model,
      if (buildDate != null) 'build_date': buildDate,
      if (odometer != null) 'odometer': odometer,
    });
  }

  VehicleCompanion copyWith(
      {Value<int>? id,
      Value<String>? manufacturer,
      Value<String>? model,
      Value<DateTime?>? buildDate,
      Value<int>? odometer}) {
    return VehicleCompanion(
      id: id ?? this.id,
      manufacturer: manufacturer ?? this.manufacturer,
      model: model ?? this.model,
      buildDate: buildDate ?? this.buildDate,
      odometer: odometer ?? this.odometer,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (manufacturer.present) {
      map['manufacturer'] = Variable<String>(manufacturer.value);
    }
    if (model.present) {
      map['model'] = Variable<String>(model.value);
    }
    if (buildDate.present) {
      map['build_date'] = Variable<DateTime?>(buildDate.value);
    }
    if (odometer.present) {
      map['odometer'] = Variable<int>(odometer.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VehicleCompanion(')
          ..write('id: $id, ')
          ..write('manufacturer: $manufacturer, ')
          ..write('model: $model, ')
          ..write('buildDate: $buildDate, ')
          ..write('odometer: $odometer')
          ..write(')'))
        .toString();
  }
}

class $VehicleTable extends Vehicle with TableInfo<$VehicleTable, VehicleData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VehicleTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _manufacturerMeta =
      const VerificationMeta('manufacturer');
  @override
  late final GeneratedColumn<String?> manufacturer = GeneratedColumn<String?>(
      'manufacturer', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _modelMeta = const VerificationMeta('model');
  @override
  late final GeneratedColumn<String?> model = GeneratedColumn<String?>(
      'model', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _buildDateMeta = const VerificationMeta('buildDate');
  @override
  late final GeneratedColumn<DateTime?> buildDate = GeneratedColumn<DateTime?>(
      'build_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _odometerMeta = const VerificationMeta('odometer');
  @override
  late final GeneratedColumn<int?> odometer = GeneratedColumn<int?>(
      'odometer', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns =>
      [id, manufacturer, model, buildDate, odometer];
  @override
  String get aliasedName => _alias ?? 'vehicle';
  @override
  String get actualTableName => 'vehicle';
  @override
  VerificationContext validateIntegrity(Insertable<VehicleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('manufacturer')) {
      context.handle(
          _manufacturerMeta,
          manufacturer.isAcceptableOrUnknown(
              data['manufacturer']!, _manufacturerMeta));
    } else if (isInserting) {
      context.missing(_manufacturerMeta);
    }
    if (data.containsKey('model')) {
      context.handle(
          _modelMeta, model.isAcceptableOrUnknown(data['model']!, _modelMeta));
    } else if (isInserting) {
      context.missing(_modelMeta);
    }
    if (data.containsKey('build_date')) {
      context.handle(_buildDateMeta,
          buildDate.isAcceptableOrUnknown(data['build_date']!, _buildDateMeta));
    }
    if (data.containsKey('odometer')) {
      context.handle(_odometerMeta,
          odometer.isAcceptableOrUnknown(data['odometer']!, _odometerMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  VehicleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return VehicleData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $VehicleTable createAlias(String alias) {
    return $VehicleTable(attachedDatabase, alias);
  }
}

abstract class _$DBController extends GeneratedDatabase {
  _$DBController(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $VehicleTable vehicle = $VehicleTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [vehicle];
}
