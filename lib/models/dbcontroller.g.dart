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
  final String? generation;
  final DateTime? buildDate;
  final int mileage;
  final String licensePlate;
  final String notes;
  final int primaryFuelTypeId;
  final double primaryFuelCapacity;
  final int? secondaryFuelTypeId;
  final double? secondaryFuelCapacity;
  final int? buyMileage;
  final DateTime? buyDateTime;
  final double? buyPrice;
  final int? sellMileage;
  final DateTime? sellDateTime;
  final double? sellPrice;
  final int? currentTireGroupId;
  VehicleData(
      {required this.id,
      required this.manufacturer,
      required this.model,
      this.generation,
      this.buildDate,
      required this.mileage,
      required this.licensePlate,
      required this.notes,
      required this.primaryFuelTypeId,
      required this.primaryFuelCapacity,
      this.secondaryFuelTypeId,
      this.secondaryFuelCapacity,
      this.buyMileage,
      this.buyDateTime,
      this.buyPrice,
      this.sellMileage,
      this.sellDateTime,
      this.sellPrice,
      this.currentTireGroupId});
  factory VehicleData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return VehicleData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      manufacturer: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}manufacturer'])!,
      model: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}model'])!,
      generation: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}generation']),
      buildDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}build_date']),
      mileage: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mileage'])!,
      licensePlate: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}license_plate'])!,
      notes: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}notes'])!,
      primaryFuelTypeId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}primary_fuel_type_id'])!,
      primaryFuelCapacity: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}primary_fuel_capacity'])!,
      secondaryFuelTypeId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}secondary_fuel_type_id']),
      secondaryFuelCapacity: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}secondary_fuel_capacity']),
      buyMileage: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}buy_mileage']),
      buyDateTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}buy_date_time']),
      buyPrice: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}buy_price']),
      sellMileage: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sell_mileage']),
      sellDateTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sell_date_time']),
      sellPrice: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sell_price']),
      currentTireGroupId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}current_tire_group_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['manufacturer'] = Variable<String>(manufacturer);
    map['model'] = Variable<String>(model);
    if (!nullToAbsent || generation != null) {
      map['generation'] = Variable<String?>(generation);
    }
    if (!nullToAbsent || buildDate != null) {
      map['build_date'] = Variable<DateTime?>(buildDate);
    }
    map['mileage'] = Variable<int>(mileage);
    map['license_plate'] = Variable<String>(licensePlate);
    map['notes'] = Variable<String>(notes);
    map['primary_fuel_type_id'] = Variable<int>(primaryFuelTypeId);
    map['primary_fuel_capacity'] = Variable<double>(primaryFuelCapacity);
    if (!nullToAbsent || secondaryFuelTypeId != null) {
      map['secondary_fuel_type_id'] = Variable<int?>(secondaryFuelTypeId);
    }
    if (!nullToAbsent || secondaryFuelCapacity != null) {
      map['secondary_fuel_capacity'] = Variable<double?>(secondaryFuelCapacity);
    }
    if (!nullToAbsent || buyMileage != null) {
      map['buy_mileage'] = Variable<int?>(buyMileage);
    }
    if (!nullToAbsent || buyDateTime != null) {
      map['buy_date_time'] = Variable<DateTime?>(buyDateTime);
    }
    if (!nullToAbsent || buyPrice != null) {
      map['buy_price'] = Variable<double?>(buyPrice);
    }
    if (!nullToAbsent || sellMileage != null) {
      map['sell_mileage'] = Variable<int?>(sellMileage);
    }
    if (!nullToAbsent || sellDateTime != null) {
      map['sell_date_time'] = Variable<DateTime?>(sellDateTime);
    }
    if (!nullToAbsent || sellPrice != null) {
      map['sell_price'] = Variable<double?>(sellPrice);
    }
    if (!nullToAbsent || currentTireGroupId != null) {
      map['current_tire_group_id'] = Variable<int?>(currentTireGroupId);
    }
    return map;
  }

  VehicleCompanion toCompanion(bool nullToAbsent) {
    return VehicleCompanion(
      id: Value(id),
      manufacturer: Value(manufacturer),
      model: Value(model),
      generation: generation == null && nullToAbsent
          ? const Value.absent()
          : Value(generation),
      buildDate: buildDate == null && nullToAbsent
          ? const Value.absent()
          : Value(buildDate),
      mileage: Value(mileage),
      licensePlate: Value(licensePlate),
      notes: Value(notes),
      primaryFuelTypeId: Value(primaryFuelTypeId),
      primaryFuelCapacity: Value(primaryFuelCapacity),
      secondaryFuelTypeId: secondaryFuelTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(secondaryFuelTypeId),
      secondaryFuelCapacity: secondaryFuelCapacity == null && nullToAbsent
          ? const Value.absent()
          : Value(secondaryFuelCapacity),
      buyMileage: buyMileage == null && nullToAbsent
          ? const Value.absent()
          : Value(buyMileage),
      buyDateTime: buyDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(buyDateTime),
      buyPrice: buyPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(buyPrice),
      sellMileage: sellMileage == null && nullToAbsent
          ? const Value.absent()
          : Value(sellMileage),
      sellDateTime: sellDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(sellDateTime),
      sellPrice: sellPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(sellPrice),
      currentTireGroupId: currentTireGroupId == null && nullToAbsent
          ? const Value.absent()
          : Value(currentTireGroupId),
    );
  }

  factory VehicleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VehicleData(
      id: serializer.fromJson<int>(json['id']),
      manufacturer: serializer.fromJson<String>(json['manufacturer']),
      model: serializer.fromJson<String>(json['model']),
      generation: serializer.fromJson<String?>(json['generation']),
      buildDate: serializer.fromJson<DateTime?>(json['buildDate']),
      mileage: serializer.fromJson<int>(json['mileage']),
      licensePlate: serializer.fromJson<String>(json['licensePlate']),
      notes: serializer.fromJson<String>(json['notes']),
      primaryFuelTypeId: serializer.fromJson<int>(json['primaryFuelTypeId']),
      primaryFuelCapacity:
          serializer.fromJson<double>(json['primaryFuelCapacity']),
      secondaryFuelTypeId:
          serializer.fromJson<int?>(json['secondaryFuelTypeId']),
      secondaryFuelCapacity:
          serializer.fromJson<double?>(json['secondaryFuelCapacity']),
      buyMileage: serializer.fromJson<int?>(json['buyMileage']),
      buyDateTime: serializer.fromJson<DateTime?>(json['buyDateTime']),
      buyPrice: serializer.fromJson<double?>(json['buyPrice']),
      sellMileage: serializer.fromJson<int?>(json['sellMileage']),
      sellDateTime: serializer.fromJson<DateTime?>(json['sellDateTime']),
      sellPrice: serializer.fromJson<double?>(json['sellPrice']),
      currentTireGroupId: serializer.fromJson<int?>(json['currentTireGroupId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'manufacturer': serializer.toJson<String>(manufacturer),
      'model': serializer.toJson<String>(model),
      'generation': serializer.toJson<String?>(generation),
      'buildDate': serializer.toJson<DateTime?>(buildDate),
      'mileage': serializer.toJson<int>(mileage),
      'licensePlate': serializer.toJson<String>(licensePlate),
      'notes': serializer.toJson<String>(notes),
      'primaryFuelTypeId': serializer.toJson<int>(primaryFuelTypeId),
      'primaryFuelCapacity': serializer.toJson<double>(primaryFuelCapacity),
      'secondaryFuelTypeId': serializer.toJson<int?>(secondaryFuelTypeId),
      'secondaryFuelCapacity':
          serializer.toJson<double?>(secondaryFuelCapacity),
      'buyMileage': serializer.toJson<int?>(buyMileage),
      'buyDateTime': serializer.toJson<DateTime?>(buyDateTime),
      'buyPrice': serializer.toJson<double?>(buyPrice),
      'sellMileage': serializer.toJson<int?>(sellMileage),
      'sellDateTime': serializer.toJson<DateTime?>(sellDateTime),
      'sellPrice': serializer.toJson<double?>(sellPrice),
      'currentTireGroupId': serializer.toJson<int?>(currentTireGroupId),
    };
  }

  VehicleData copyWith(
          {int? id,
          String? manufacturer,
          String? model,
          String? generation,
          DateTime? buildDate,
          int? mileage,
          String? licensePlate,
          String? notes,
          int? primaryFuelTypeId,
          double? primaryFuelCapacity,
          int? secondaryFuelTypeId,
          double? secondaryFuelCapacity,
          int? buyMileage,
          DateTime? buyDateTime,
          double? buyPrice,
          int? sellMileage,
          DateTime? sellDateTime,
          double? sellPrice,
          int? currentTireGroupId}) =>
      VehicleData(
        id: id ?? this.id,
        manufacturer: manufacturer ?? this.manufacturer,
        model: model ?? this.model,
        generation: generation ?? this.generation,
        buildDate: buildDate ?? this.buildDate,
        mileage: mileage ?? this.mileage,
        licensePlate: licensePlate ?? this.licensePlate,
        notes: notes ?? this.notes,
        primaryFuelTypeId: primaryFuelTypeId ?? this.primaryFuelTypeId,
        primaryFuelCapacity: primaryFuelCapacity ?? this.primaryFuelCapacity,
        secondaryFuelTypeId: secondaryFuelTypeId ?? this.secondaryFuelTypeId,
        secondaryFuelCapacity:
            secondaryFuelCapacity ?? this.secondaryFuelCapacity,
        buyMileage: buyMileage ?? this.buyMileage,
        buyDateTime: buyDateTime ?? this.buyDateTime,
        buyPrice: buyPrice ?? this.buyPrice,
        sellMileage: sellMileage ?? this.sellMileage,
        sellDateTime: sellDateTime ?? this.sellDateTime,
        sellPrice: sellPrice ?? this.sellPrice,
        currentTireGroupId: currentTireGroupId ?? this.currentTireGroupId,
      );
  @override
  String toString() {
    return (StringBuffer('VehicleData(')
          ..write('id: $id, ')
          ..write('manufacturer: $manufacturer, ')
          ..write('model: $model, ')
          ..write('generation: $generation, ')
          ..write('buildDate: $buildDate, ')
          ..write('mileage: $mileage, ')
          ..write('licensePlate: $licensePlate, ')
          ..write('notes: $notes, ')
          ..write('primaryFuelTypeId: $primaryFuelTypeId, ')
          ..write('primaryFuelCapacity: $primaryFuelCapacity, ')
          ..write('secondaryFuelTypeId: $secondaryFuelTypeId, ')
          ..write('secondaryFuelCapacity: $secondaryFuelCapacity, ')
          ..write('buyMileage: $buyMileage, ')
          ..write('buyDateTime: $buyDateTime, ')
          ..write('buyPrice: $buyPrice, ')
          ..write('sellMileage: $sellMileage, ')
          ..write('sellDateTime: $sellDateTime, ')
          ..write('sellPrice: $sellPrice, ')
          ..write('currentTireGroupId: $currentTireGroupId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      manufacturer,
      model,
      generation,
      buildDate,
      mileage,
      licensePlate,
      notes,
      primaryFuelTypeId,
      primaryFuelCapacity,
      secondaryFuelTypeId,
      secondaryFuelCapacity,
      buyMileage,
      buyDateTime,
      buyPrice,
      sellMileage,
      sellDateTime,
      sellPrice,
      currentTireGroupId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VehicleData &&
          other.id == this.id &&
          other.manufacturer == this.manufacturer &&
          other.model == this.model &&
          other.generation == this.generation &&
          other.buildDate == this.buildDate &&
          other.mileage == this.mileage &&
          other.licensePlate == this.licensePlate &&
          other.notes == this.notes &&
          other.primaryFuelTypeId == this.primaryFuelTypeId &&
          other.primaryFuelCapacity == this.primaryFuelCapacity &&
          other.secondaryFuelTypeId == this.secondaryFuelTypeId &&
          other.secondaryFuelCapacity == this.secondaryFuelCapacity &&
          other.buyMileage == this.buyMileage &&
          other.buyDateTime == this.buyDateTime &&
          other.buyPrice == this.buyPrice &&
          other.sellMileage == this.sellMileage &&
          other.sellDateTime == this.sellDateTime &&
          other.sellPrice == this.sellPrice &&
          other.currentTireGroupId == this.currentTireGroupId);
}

class VehicleCompanion extends UpdateCompanion<VehicleData> {
  final Value<int> id;
  final Value<String> manufacturer;
  final Value<String> model;
  final Value<String?> generation;
  final Value<DateTime?> buildDate;
  final Value<int> mileage;
  final Value<String> licensePlate;
  final Value<String> notes;
  final Value<int> primaryFuelTypeId;
  final Value<double> primaryFuelCapacity;
  final Value<int?> secondaryFuelTypeId;
  final Value<double?> secondaryFuelCapacity;
  final Value<int?> buyMileage;
  final Value<DateTime?> buyDateTime;
  final Value<double?> buyPrice;
  final Value<int?> sellMileage;
  final Value<DateTime?> sellDateTime;
  final Value<double?> sellPrice;
  final Value<int?> currentTireGroupId;
  const VehicleCompanion({
    this.id = const Value.absent(),
    this.manufacturer = const Value.absent(),
    this.model = const Value.absent(),
    this.generation = const Value.absent(),
    this.buildDate = const Value.absent(),
    this.mileage = const Value.absent(),
    this.licensePlate = const Value.absent(),
    this.notes = const Value.absent(),
    this.primaryFuelTypeId = const Value.absent(),
    this.primaryFuelCapacity = const Value.absent(),
    this.secondaryFuelTypeId = const Value.absent(),
    this.secondaryFuelCapacity = const Value.absent(),
    this.buyMileage = const Value.absent(),
    this.buyDateTime = const Value.absent(),
    this.buyPrice = const Value.absent(),
    this.sellMileage = const Value.absent(),
    this.sellDateTime = const Value.absent(),
    this.sellPrice = const Value.absent(),
    this.currentTireGroupId = const Value.absent(),
  });
  VehicleCompanion.insert({
    this.id = const Value.absent(),
    required String manufacturer,
    required String model,
    this.generation = const Value.absent(),
    this.buildDate = const Value.absent(),
    required int mileage,
    this.licensePlate = const Value.absent(),
    this.notes = const Value.absent(),
    required int primaryFuelTypeId,
    required double primaryFuelCapacity,
    this.secondaryFuelTypeId = const Value.absent(),
    this.secondaryFuelCapacity = const Value.absent(),
    this.buyMileage = const Value.absent(),
    this.buyDateTime = const Value.absent(),
    this.buyPrice = const Value.absent(),
    this.sellMileage = const Value.absent(),
    this.sellDateTime = const Value.absent(),
    this.sellPrice = const Value.absent(),
    this.currentTireGroupId = const Value.absent(),
  })  : manufacturer = Value(manufacturer),
        model = Value(model),
        mileage = Value(mileage),
        primaryFuelTypeId = Value(primaryFuelTypeId),
        primaryFuelCapacity = Value(primaryFuelCapacity);
  static Insertable<VehicleData> custom({
    Expression<int>? id,
    Expression<String>? manufacturer,
    Expression<String>? model,
    Expression<String?>? generation,
    Expression<DateTime?>? buildDate,
    Expression<int>? mileage,
    Expression<String>? licensePlate,
    Expression<String>? notes,
    Expression<int>? primaryFuelTypeId,
    Expression<double>? primaryFuelCapacity,
    Expression<int?>? secondaryFuelTypeId,
    Expression<double?>? secondaryFuelCapacity,
    Expression<int?>? buyMileage,
    Expression<DateTime?>? buyDateTime,
    Expression<double?>? buyPrice,
    Expression<int?>? sellMileage,
    Expression<DateTime?>? sellDateTime,
    Expression<double?>? sellPrice,
    Expression<int?>? currentTireGroupId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (model != null) 'model': model,
      if (generation != null) 'generation': generation,
      if (buildDate != null) 'build_date': buildDate,
      if (mileage != null) 'mileage': mileage,
      if (licensePlate != null) 'license_plate': licensePlate,
      if (notes != null) 'notes': notes,
      if (primaryFuelTypeId != null) 'primary_fuel_type_id': primaryFuelTypeId,
      if (primaryFuelCapacity != null)
        'primary_fuel_capacity': primaryFuelCapacity,
      if (secondaryFuelTypeId != null)
        'secondary_fuel_type_id': secondaryFuelTypeId,
      if (secondaryFuelCapacity != null)
        'secondary_fuel_capacity': secondaryFuelCapacity,
      if (buyMileage != null) 'buy_mileage': buyMileage,
      if (buyDateTime != null) 'buy_date_time': buyDateTime,
      if (buyPrice != null) 'buy_price': buyPrice,
      if (sellMileage != null) 'sell_mileage': sellMileage,
      if (sellDateTime != null) 'sell_date_time': sellDateTime,
      if (sellPrice != null) 'sell_price': sellPrice,
      if (currentTireGroupId != null)
        'current_tire_group_id': currentTireGroupId,
    });
  }

  VehicleCompanion copyWith(
      {Value<int>? id,
      Value<String>? manufacturer,
      Value<String>? model,
      Value<String?>? generation,
      Value<DateTime?>? buildDate,
      Value<int>? mileage,
      Value<String>? licensePlate,
      Value<String>? notes,
      Value<int>? primaryFuelTypeId,
      Value<double>? primaryFuelCapacity,
      Value<int?>? secondaryFuelTypeId,
      Value<double?>? secondaryFuelCapacity,
      Value<int?>? buyMileage,
      Value<DateTime?>? buyDateTime,
      Value<double?>? buyPrice,
      Value<int?>? sellMileage,
      Value<DateTime?>? sellDateTime,
      Value<double?>? sellPrice,
      Value<int?>? currentTireGroupId}) {
    return VehicleCompanion(
      id: id ?? this.id,
      manufacturer: manufacturer ?? this.manufacturer,
      model: model ?? this.model,
      generation: generation ?? this.generation,
      buildDate: buildDate ?? this.buildDate,
      mileage: mileage ?? this.mileage,
      licensePlate: licensePlate ?? this.licensePlate,
      notes: notes ?? this.notes,
      primaryFuelTypeId: primaryFuelTypeId ?? this.primaryFuelTypeId,
      primaryFuelCapacity: primaryFuelCapacity ?? this.primaryFuelCapacity,
      secondaryFuelTypeId: secondaryFuelTypeId ?? this.secondaryFuelTypeId,
      secondaryFuelCapacity:
          secondaryFuelCapacity ?? this.secondaryFuelCapacity,
      buyMileage: buyMileage ?? this.buyMileage,
      buyDateTime: buyDateTime ?? this.buyDateTime,
      buyPrice: buyPrice ?? this.buyPrice,
      sellMileage: sellMileage ?? this.sellMileage,
      sellDateTime: sellDateTime ?? this.sellDateTime,
      sellPrice: sellPrice ?? this.sellPrice,
      currentTireGroupId: currentTireGroupId ?? this.currentTireGroupId,
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
    if (generation.present) {
      map['generation'] = Variable<String?>(generation.value);
    }
    if (buildDate.present) {
      map['build_date'] = Variable<DateTime?>(buildDate.value);
    }
    if (mileage.present) {
      map['mileage'] = Variable<int>(mileage.value);
    }
    if (licensePlate.present) {
      map['license_plate'] = Variable<String>(licensePlate.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (primaryFuelTypeId.present) {
      map['primary_fuel_type_id'] = Variable<int>(primaryFuelTypeId.value);
    }
    if (primaryFuelCapacity.present) {
      map['primary_fuel_capacity'] =
          Variable<double>(primaryFuelCapacity.value);
    }
    if (secondaryFuelTypeId.present) {
      map['secondary_fuel_type_id'] = Variable<int?>(secondaryFuelTypeId.value);
    }
    if (secondaryFuelCapacity.present) {
      map['secondary_fuel_capacity'] =
          Variable<double?>(secondaryFuelCapacity.value);
    }
    if (buyMileage.present) {
      map['buy_mileage'] = Variable<int?>(buyMileage.value);
    }
    if (buyDateTime.present) {
      map['buy_date_time'] = Variable<DateTime?>(buyDateTime.value);
    }
    if (buyPrice.present) {
      map['buy_price'] = Variable<double?>(buyPrice.value);
    }
    if (sellMileage.present) {
      map['sell_mileage'] = Variable<int?>(sellMileage.value);
    }
    if (sellDateTime.present) {
      map['sell_date_time'] = Variable<DateTime?>(sellDateTime.value);
    }
    if (sellPrice.present) {
      map['sell_price'] = Variable<double?>(sellPrice.value);
    }
    if (currentTireGroupId.present) {
      map['current_tire_group_id'] = Variable<int?>(currentTireGroupId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VehicleCompanion(')
          ..write('id: $id, ')
          ..write('manufacturer: $manufacturer, ')
          ..write('model: $model, ')
          ..write('generation: $generation, ')
          ..write('buildDate: $buildDate, ')
          ..write('mileage: $mileage, ')
          ..write('licensePlate: $licensePlate, ')
          ..write('notes: $notes, ')
          ..write('primaryFuelTypeId: $primaryFuelTypeId, ')
          ..write('primaryFuelCapacity: $primaryFuelCapacity, ')
          ..write('secondaryFuelTypeId: $secondaryFuelTypeId, ')
          ..write('secondaryFuelCapacity: $secondaryFuelCapacity, ')
          ..write('buyMileage: $buyMileage, ')
          ..write('buyDateTime: $buyDateTime, ')
          ..write('buyPrice: $buyPrice, ')
          ..write('sellMileage: $sellMileage, ')
          ..write('sellDateTime: $sellDateTime, ')
          ..write('sellPrice: $sellPrice, ')
          ..write('currentTireGroupId: $currentTireGroupId')
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
  final VerificationMeta _generationMeta = const VerificationMeta('generation');
  @override
  late final GeneratedColumn<String?> generation = GeneratedColumn<String?>(
      'generation', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _buildDateMeta = const VerificationMeta('buildDate');
  @override
  late final GeneratedColumn<DateTime?> buildDate = GeneratedColumn<DateTime?>(
      'build_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _mileageMeta = const VerificationMeta('mileage');
  @override
  late final GeneratedColumn<int?> mileage = GeneratedColumn<int?>(
      'mileage', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _licensePlateMeta =
      const VerificationMeta('licensePlate');
  @override
  late final GeneratedColumn<String?> licensePlate = GeneratedColumn<String?>(
      'license_plate', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 16),
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  final VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String?> notes = GeneratedColumn<String?>(
      'notes', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 512),
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  final VerificationMeta _primaryFuelTypeIdMeta =
      const VerificationMeta('primaryFuelTypeId');
  @override
  late final GeneratedColumn<int?> primaryFuelTypeId = GeneratedColumn<int?>(
      'primary_fuel_type_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _primaryFuelCapacityMeta =
      const VerificationMeta('primaryFuelCapacity');
  @override
  late final GeneratedColumn<double?> primaryFuelCapacity =
      GeneratedColumn<double?>('primary_fuel_capacity', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _secondaryFuelTypeIdMeta =
      const VerificationMeta('secondaryFuelTypeId');
  @override
  late final GeneratedColumn<int?> secondaryFuelTypeId = GeneratedColumn<int?>(
      'secondary_fuel_type_id', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _secondaryFuelCapacityMeta =
      const VerificationMeta('secondaryFuelCapacity');
  @override
  late final GeneratedColumn<double?> secondaryFuelCapacity =
      GeneratedColumn<double?>('secondary_fuel_capacity', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _buyMileageMeta = const VerificationMeta('buyMileage');
  @override
  late final GeneratedColumn<int?> buyMileage = GeneratedColumn<int?>(
      'buy_mileage', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _buyDateTimeMeta =
      const VerificationMeta('buyDateTime');
  @override
  late final GeneratedColumn<DateTime?> buyDateTime =
      GeneratedColumn<DateTime?>('buy_date_time', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _buyPriceMeta = const VerificationMeta('buyPrice');
  @override
  late final GeneratedColumn<double?> buyPrice = GeneratedColumn<double?>(
      'buy_price', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _sellMileageMeta =
      const VerificationMeta('sellMileage');
  @override
  late final GeneratedColumn<int?> sellMileage = GeneratedColumn<int?>(
      'sell_mileage', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _sellDateTimeMeta =
      const VerificationMeta('sellDateTime');
  @override
  late final GeneratedColumn<DateTime?> sellDateTime =
      GeneratedColumn<DateTime?>('sell_date_time', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _sellPriceMeta = const VerificationMeta('sellPrice');
  @override
  late final GeneratedColumn<double?> sellPrice = GeneratedColumn<double?>(
      'sell_price', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _currentTireGroupIdMeta =
      const VerificationMeta('currentTireGroupId');
  @override
  late final GeneratedColumn<int?> currentTireGroupId = GeneratedColumn<int?>(
      'current_tire_group_id', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        manufacturer,
        model,
        generation,
        buildDate,
        mileage,
        licensePlate,
        notes,
        primaryFuelTypeId,
        primaryFuelCapacity,
        secondaryFuelTypeId,
        secondaryFuelCapacity,
        buyMileage,
        buyDateTime,
        buyPrice,
        sellMileage,
        sellDateTime,
        sellPrice,
        currentTireGroupId
      ];
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
    if (data.containsKey('generation')) {
      context.handle(
          _generationMeta,
          generation.isAcceptableOrUnknown(
              data['generation']!, _generationMeta));
    }
    if (data.containsKey('build_date')) {
      context.handle(_buildDateMeta,
          buildDate.isAcceptableOrUnknown(data['build_date']!, _buildDateMeta));
    }
    if (data.containsKey('mileage')) {
      context.handle(_mileageMeta,
          mileage.isAcceptableOrUnknown(data['mileage']!, _mileageMeta));
    } else if (isInserting) {
      context.missing(_mileageMeta);
    }
    if (data.containsKey('license_plate')) {
      context.handle(
          _licensePlateMeta,
          licensePlate.isAcceptableOrUnknown(
              data['license_plate']!, _licensePlateMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('primary_fuel_type_id')) {
      context.handle(
          _primaryFuelTypeIdMeta,
          primaryFuelTypeId.isAcceptableOrUnknown(
              data['primary_fuel_type_id']!, _primaryFuelTypeIdMeta));
    } else if (isInserting) {
      context.missing(_primaryFuelTypeIdMeta);
    }
    if (data.containsKey('primary_fuel_capacity')) {
      context.handle(
          _primaryFuelCapacityMeta,
          primaryFuelCapacity.isAcceptableOrUnknown(
              data['primary_fuel_capacity']!, _primaryFuelCapacityMeta));
    } else if (isInserting) {
      context.missing(_primaryFuelCapacityMeta);
    }
    if (data.containsKey('secondary_fuel_type_id')) {
      context.handle(
          _secondaryFuelTypeIdMeta,
          secondaryFuelTypeId.isAcceptableOrUnknown(
              data['secondary_fuel_type_id']!, _secondaryFuelTypeIdMeta));
    }
    if (data.containsKey('secondary_fuel_capacity')) {
      context.handle(
          _secondaryFuelCapacityMeta,
          secondaryFuelCapacity.isAcceptableOrUnknown(
              data['secondary_fuel_capacity']!, _secondaryFuelCapacityMeta));
    }
    if (data.containsKey('buy_mileage')) {
      context.handle(
          _buyMileageMeta,
          buyMileage.isAcceptableOrUnknown(
              data['buy_mileage']!, _buyMileageMeta));
    }
    if (data.containsKey('buy_date_time')) {
      context.handle(
          _buyDateTimeMeta,
          buyDateTime.isAcceptableOrUnknown(
              data['buy_date_time']!, _buyDateTimeMeta));
    }
    if (data.containsKey('buy_price')) {
      context.handle(_buyPriceMeta,
          buyPrice.isAcceptableOrUnknown(data['buy_price']!, _buyPriceMeta));
    }
    if (data.containsKey('sell_mileage')) {
      context.handle(
          _sellMileageMeta,
          sellMileage.isAcceptableOrUnknown(
              data['sell_mileage']!, _sellMileageMeta));
    }
    if (data.containsKey('sell_date_time')) {
      context.handle(
          _sellDateTimeMeta,
          sellDateTime.isAcceptableOrUnknown(
              data['sell_date_time']!, _sellDateTimeMeta));
    }
    if (data.containsKey('sell_price')) {
      context.handle(_sellPriceMeta,
          sellPrice.isAcceptableOrUnknown(data['sell_price']!, _sellPriceMeta));
    }
    if (data.containsKey('current_tire_group_id')) {
      context.handle(
          _currentTireGroupIdMeta,
          currentTireGroupId.isAcceptableOrUnknown(
              data['current_tire_group_id']!, _currentTireGroupIdMeta));
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
