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
  final int seasonalLicenseBeginMonth;
  final int seasonalLicenseEndMonth;
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
      required this.seasonalLicenseBeginMonth,
      required this.seasonalLicenseEndMonth,
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
      seasonalLicenseBeginMonth: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}seasonal_license_begin_month'])!,
      seasonalLicenseEndMonth: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}seasonal_license_end_month'])!,
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
    map['seasonal_license_begin_month'] =
        Variable<int>(seasonalLicenseBeginMonth);
    map['seasonal_license_end_month'] = Variable<int>(seasonalLicenseEndMonth);
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
      seasonalLicenseBeginMonth: Value(seasonalLicenseBeginMonth),
      seasonalLicenseEndMonth: Value(seasonalLicenseEndMonth),
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
      seasonalLicenseBeginMonth:
          serializer.fromJson<int>(json['seasonalLicenseBeginMonth']),
      seasonalLicenseEndMonth:
          serializer.fromJson<int>(json['seasonalLicenseEndMonth']),
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
      'seasonalLicenseBeginMonth':
          serializer.toJson<int>(seasonalLicenseBeginMonth),
      'seasonalLicenseEndMonth':
          serializer.toJson<int>(seasonalLicenseEndMonth),
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
          int? seasonalLicenseBeginMonth,
          int? seasonalLicenseEndMonth,
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
        seasonalLicenseBeginMonth:
            seasonalLicenseBeginMonth ?? this.seasonalLicenseBeginMonth,
        seasonalLicenseEndMonth:
            seasonalLicenseEndMonth ?? this.seasonalLicenseEndMonth,
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
          ..write('seasonalLicenseBeginMonth: $seasonalLicenseBeginMonth, ')
          ..write('seasonalLicenseEndMonth: $seasonalLicenseEndMonth, ')
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
  int get hashCode => Object.hashAll([
        id,
        manufacturer,
        model,
        generation,
        buildDate,
        mileage,
        licensePlate,
        seasonalLicenseBeginMonth,
        seasonalLicenseEndMonth,
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
      ]);
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
          other.seasonalLicenseBeginMonth == this.seasonalLicenseBeginMonth &&
          other.seasonalLicenseEndMonth == this.seasonalLicenseEndMonth &&
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
  final Value<int> seasonalLicenseBeginMonth;
  final Value<int> seasonalLicenseEndMonth;
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
    this.seasonalLicenseBeginMonth = const Value.absent(),
    this.seasonalLicenseEndMonth = const Value.absent(),
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
    this.seasonalLicenseBeginMonth = const Value.absent(),
    this.seasonalLicenseEndMonth = const Value.absent(),
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
    Expression<int>? seasonalLicenseBeginMonth,
    Expression<int>? seasonalLicenseEndMonth,
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
      if (seasonalLicenseBeginMonth != null)
        'seasonal_license_begin_month': seasonalLicenseBeginMonth,
      if (seasonalLicenseEndMonth != null)
        'seasonal_license_end_month': seasonalLicenseEndMonth,
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
      Value<int>? seasonalLicenseBeginMonth,
      Value<int>? seasonalLicenseEndMonth,
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
      seasonalLicenseBeginMonth:
          seasonalLicenseBeginMonth ?? this.seasonalLicenseBeginMonth,
      seasonalLicenseEndMonth:
          seasonalLicenseEndMonth ?? this.seasonalLicenseEndMonth,
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
    if (seasonalLicenseBeginMonth.present) {
      map['seasonal_license_begin_month'] =
          Variable<int>(seasonalLicenseBeginMonth.value);
    }
    if (seasonalLicenseEndMonth.present) {
      map['seasonal_license_end_month'] =
          Variable<int>(seasonalLicenseEndMonth.value);
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
          ..write('seasonalLicenseBeginMonth: $seasonalLicenseBeginMonth, ')
          ..write('seasonalLicenseEndMonth: $seasonalLicenseEndMonth, ')
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
  final VerificationMeta _seasonalLicenseBeginMonthMeta =
      const VerificationMeta('seasonalLicenseBeginMonth');
  @override
  late final GeneratedColumn<int?> seasonalLicenseBeginMonth =
      GeneratedColumn<int?>('seasonal_license_begin_month', aliasedName, false,
          type: const IntType(),
          requiredDuringInsert: false,
          defaultValue: const Constant(1));
  final VerificationMeta _seasonalLicenseEndMonthMeta =
      const VerificationMeta('seasonalLicenseEndMonth');
  @override
  late final GeneratedColumn<int?> seasonalLicenseEndMonth =
      GeneratedColumn<int?>('seasonal_license_end_month', aliasedName, false,
          type: const IntType(),
          requiredDuringInsert: false,
          defaultValue: const Constant(12));
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
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES fuel_type (id)');
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
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES fuel_type (id)');
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
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES tire_setup (id)');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        manufacturer,
        model,
        generation,
        buildDate,
        mileage,
        licensePlate,
        seasonalLicenseBeginMonth,
        seasonalLicenseEndMonth,
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
    if (data.containsKey('seasonal_license_begin_month')) {
      context.handle(
          _seasonalLicenseBeginMonthMeta,
          seasonalLicenseBeginMonth.isAcceptableOrUnknown(
              data['seasonal_license_begin_month']!,
              _seasonalLicenseBeginMonthMeta));
    }
    if (data.containsKey('seasonal_license_end_month')) {
      context.handle(
          _seasonalLicenseEndMonthMeta,
          seasonalLicenseEndMonth.isAcceptableOrUnknown(
              data['seasonal_license_end_month']!,
              _seasonalLicenseEndMonthMeta));
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

<<<<<<< HEAD
class Setting extends DataClass implements Insertable<Setting> {
  final String settingName;
  final String settingType;
  final String settingValue;
  Setting(
      {required this.settingName,
      required this.settingType,
      required this.settingValue});
  factory Setting.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Setting(
      settingName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}setting_name'])!,
      settingType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}setting_type'])!,
      settingValue: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}setting_value'])!,
=======
class SettingData extends DataClass implements Insertable<SettingData> {
  final String name;
  final String type;
  final String value;
  SettingData({required this.name, required this.type, required this.value});
  factory SettingData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SettingData(
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      value: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}value'])!,
>>>>>>> 76bb282adde9b55a7a9c45da73a6c0623ebf00bd
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
<<<<<<< HEAD
    map['setting_name'] = Variable<String>(settingName);
    map['setting_type'] = Variable<String>(settingType);
    map['setting_value'] = Variable<String>(settingValue);
    return map;
  }

  SettingsCompanion toCompanion(bool nullToAbsent) {
    return SettingsCompanion(
      settingName: Value(settingName),
      settingType: Value(settingType),
      settingValue: Value(settingValue),
    );
  }

  factory Setting.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Setting(
      settingName: serializer.fromJson<String>(json['settingName']),
      settingType: serializer.fromJson<String>(json['settingType']),
      settingValue: serializer.fromJson<String>(json['settingValue']),
=======
    map['name'] = Variable<String>(name);
    map['type'] = Variable<String>(type);
    map['value'] = Variable<String>(value);
    return map;
  }

  SettingCompanion toCompanion(bool nullToAbsent) {
    return SettingCompanion(
      name: Value(name),
      type: Value(type),
      value: Value(value),
    );
  }

  factory SettingData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingData(
      name: serializer.fromJson<String>(json['name']),
      type: serializer.fromJson<String>(json['type']),
      value: serializer.fromJson<String>(json['value']),
>>>>>>> 76bb282adde9b55a7a9c45da73a6c0623ebf00bd
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
<<<<<<< HEAD
      'settingName': serializer.toJson<String>(settingName),
      'settingType': serializer.toJson<String>(settingType),
      'settingValue': serializer.toJson<String>(settingValue),
    };
  }

  Setting copyWith(
          {String? settingName, String? settingType, String? settingValue}) =>
      Setting(
        settingName: settingName ?? this.settingName,
        settingType: settingType ?? this.settingType,
        settingValue: settingValue ?? this.settingValue,
      );
  @override
  String toString() {
    return (StringBuffer('Setting(')
          ..write('settingName: $settingName, ')
          ..write('settingType: $settingType, ')
          ..write('settingValue: $settingValue')
=======
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<String>(type),
      'value': serializer.toJson<String>(value),
    };
  }

  SettingData copyWith({String? name, String? type, String? value}) =>
      SettingData(
        name: name ?? this.name,
        type: type ?? this.type,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('SettingData(')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('value: $value')
>>>>>>> 76bb282adde9b55a7a9c45da73a6c0623ebf00bd
          ..write(')'))
        .toString();
  }

  @override
<<<<<<< HEAD
  int get hashCode => Object.hash(settingName, settingType, settingValue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Setting &&
          other.settingName == this.settingName &&
          other.settingType == this.settingType &&
          other.settingValue == this.settingValue);
}

class SettingsCompanion extends UpdateCompanion<Setting> {
  final Value<String> settingName;
  final Value<String> settingType;
  final Value<String> settingValue;
  const SettingsCompanion({
    this.settingName = const Value.absent(),
    this.settingType = const Value.absent(),
    this.settingValue = const Value.absent(),
  });
  SettingsCompanion.insert({
    required String settingName,
    required String settingType,
    required String settingValue,
  })  : settingName = Value(settingName),
        settingType = Value(settingType),
        settingValue = Value(settingValue);
  static Insertable<Setting> custom({
    Expression<String>? settingName,
    Expression<String>? settingType,
    Expression<String>? settingValue,
  }) {
    return RawValuesInsertable({
      if (settingName != null) 'setting_name': settingName,
      if (settingType != null) 'setting_type': settingType,
      if (settingValue != null) 'setting_value': settingValue,
    });
  }

  SettingsCompanion copyWith(
      {Value<String>? settingName,
      Value<String>? settingType,
      Value<String>? settingValue}) {
    return SettingsCompanion(
      settingName: settingName ?? this.settingName,
      settingType: settingType ?? this.settingType,
      settingValue: settingValue ?? this.settingValue,
=======
  int get hashCode => Object.hash(name, type, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingData &&
          other.name == this.name &&
          other.type == this.type &&
          other.value == this.value);
}

class SettingCompanion extends UpdateCompanion<SettingData> {
  final Value<String> name;
  final Value<String> type;
  final Value<String> value;
  const SettingCompanion({
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.value = const Value.absent(),
  });
  SettingCompanion.insert({
    required String name,
    required String type,
    required String value,
  })  : name = Value(name),
        type = Value(type),
        value = Value(value);
  static Insertable<SettingData> custom({
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? value,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (value != null) 'value': value,
    });
  }

  SettingCompanion copyWith(
      {Value<String>? name, Value<String>? type, Value<String>? value}) {
    return SettingCompanion(
      name: name ?? this.name,
      type: type ?? this.type,
      value: value ?? this.value,
>>>>>>> 76bb282adde9b55a7a9c45da73a6c0623ebf00bd
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
<<<<<<< HEAD
    if (settingName.present) {
      map['setting_name'] = Variable<String>(settingName.value);
    }
    if (settingType.present) {
      map['setting_type'] = Variable<String>(settingType.value);
    }
    if (settingValue.present) {
      map['setting_value'] = Variable<String>(settingValue.value);
=======
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
>>>>>>> 76bb282adde9b55a7a9c45da73a6c0623ebf00bd
    }
    return map;
  }

  @override
  String toString() {
<<<<<<< HEAD
    return (StringBuffer('SettingsCompanion(')
          ..write('settingName: $settingName, ')
          ..write('settingType: $settingType, ')
          ..write('settingValue: $settingValue')
=======
    return (StringBuffer('SettingCompanion(')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('value: $value')
>>>>>>> 76bb282adde9b55a7a9c45da73a6c0623ebf00bd
          ..write(')'))
        .toString();
  }
}

<<<<<<< HEAD
class $SettingsTable extends Settings with TableInfo<$SettingsTable, Setting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _settingNameMeta =
      const VerificationMeta('settingName');
  @override
  late final GeneratedColumn<String?> settingName = GeneratedColumn<String?>(
      'setting_name', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _settingTypeMeta =
      const VerificationMeta('settingType');
  @override
  late final GeneratedColumn<String?> settingType = GeneratedColumn<String?>(
      'setting_type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _settingValueMeta =
      const VerificationMeta('settingValue');
  @override
  late final GeneratedColumn<String?> settingValue = GeneratedColumn<String?>(
      'setting_value', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [settingName, settingType, settingValue];
  @override
  String get aliasedName => _alias ?? 'settings';
  @override
  String get actualTableName => 'settings';
  @override
  VerificationContext validateIntegrity(Insertable<Setting> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('setting_name')) {
      context.handle(
          _settingNameMeta,
          settingName.isAcceptableOrUnknown(
              data['setting_name']!, _settingNameMeta));
    } else if (isInserting) {
      context.missing(_settingNameMeta);
    }
    if (data.containsKey('setting_type')) {
      context.handle(
          _settingTypeMeta,
          settingType.isAcceptableOrUnknown(
              data['setting_type']!, _settingTypeMeta));
    } else if (isInserting) {
      context.missing(_settingTypeMeta);
    }
    if (data.containsKey('setting_value')) {
      context.handle(
          _settingValueMeta,
          settingValue.isAcceptableOrUnknown(
              data['setting_value']!, _settingValueMeta));
    } else if (isInserting) {
      context.missing(_settingValueMeta);
=======
class $SettingTable extends Setting with TableInfo<$SettingTable, SettingData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String?> value = GeneratedColumn<String?>(
      'value', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [name, type, value];
  @override
  String get aliasedName => _alias ?? 'setting';
  @override
  String get actualTableName => 'setting';
  @override
  VerificationContext validateIntegrity(Insertable<SettingData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
>>>>>>> 76bb282adde9b55a7a9c45da73a6c0623ebf00bd
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
<<<<<<< HEAD
  Setting map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Setting.fromData(data,
=======
  SettingData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SettingData.fromData(data,
>>>>>>> 76bb282adde9b55a7a9c45da73a6c0623ebf00bd
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
<<<<<<< HEAD
  $SettingsTable createAlias(String alias) {
    return $SettingsTable(attachedDatabase, alias);
=======
  $SettingTable createAlias(String alias) {
    return $SettingTable(attachedDatabase, alias);
>>>>>>> 76bb282adde9b55a7a9c45da73a6c0623ebf00bd
  }
}

class TireData extends DataClass implements Insertable<TireData> {
  final int id;
  final int vehicleId;
  final int width;
  final int tireWall;
  final int wheelDiameter;
  final String manufacturer;
  final DateTime? dot;
  final double? profileDepth;
  TireData(
      {required this.id,
      required this.vehicleId,
      required this.width,
      required this.tireWall,
      required this.wheelDiameter,
      required this.manufacturer,
      this.dot,
      this.profileDepth});
  factory TireData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TireData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      vehicleId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vehicle_id'])!,
      width: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}width'])!,
      tireWall: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tire_wall'])!,
      wheelDiameter: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}wheel_diameter'])!,
      manufacturer: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}manufacturer'])!,
      dot: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}dot']),
      profileDepth: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}profile_depth']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['vehicle_id'] = Variable<int>(vehicleId);
    map['width'] = Variable<int>(width);
    map['tire_wall'] = Variable<int>(tireWall);
    map['wheel_diameter'] = Variable<int>(wheelDiameter);
    map['manufacturer'] = Variable<String>(manufacturer);
    if (!nullToAbsent || dot != null) {
      map['dot'] = Variable<DateTime?>(dot);
    }
    if (!nullToAbsent || profileDepth != null) {
      map['profile_depth'] = Variable<double?>(profileDepth);
    }
    return map;
  }

  TireCompanion toCompanion(bool nullToAbsent) {
    return TireCompanion(
      id: Value(id),
      vehicleId: Value(vehicleId),
      width: Value(width),
      tireWall: Value(tireWall),
      wheelDiameter: Value(wheelDiameter),
      manufacturer: Value(manufacturer),
      dot: dot == null && nullToAbsent ? const Value.absent() : Value(dot),
      profileDepth: profileDepth == null && nullToAbsent
          ? const Value.absent()
          : Value(profileDepth),
    );
  }

  factory TireData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TireData(
      id: serializer.fromJson<int>(json['id']),
      vehicleId: serializer.fromJson<int>(json['vehicleId']),
      width: serializer.fromJson<int>(json['width']),
      tireWall: serializer.fromJson<int>(json['tireWall']),
      wheelDiameter: serializer.fromJson<int>(json['wheelDiameter']),
      manufacturer: serializer.fromJson<String>(json['manufacturer']),
      dot: serializer.fromJson<DateTime?>(json['dot']),
      profileDepth: serializer.fromJson<double?>(json['profileDepth']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'vehicleId': serializer.toJson<int>(vehicleId),
      'width': serializer.toJson<int>(width),
      'tireWall': serializer.toJson<int>(tireWall),
      'wheelDiameter': serializer.toJson<int>(wheelDiameter),
      'manufacturer': serializer.toJson<String>(manufacturer),
      'dot': serializer.toJson<DateTime?>(dot),
      'profileDepth': serializer.toJson<double?>(profileDepth),
    };
  }

  TireData copyWith(
          {int? id,
          int? vehicleId,
          int? width,
          int? tireWall,
          int? wheelDiameter,
          String? manufacturer,
          DateTime? dot,
          double? profileDepth}) =>
      TireData(
        id: id ?? this.id,
        vehicleId: vehicleId ?? this.vehicleId,
        width: width ?? this.width,
        tireWall: tireWall ?? this.tireWall,
        wheelDiameter: wheelDiameter ?? this.wheelDiameter,
        manufacturer: manufacturer ?? this.manufacturer,
        dot: dot ?? this.dot,
        profileDepth: profileDepth ?? this.profileDepth,
      );
  @override
  String toString() {
    return (StringBuffer('TireData(')
          ..write('id: $id, ')
          ..write('vehicleId: $vehicleId, ')
          ..write('width: $width, ')
          ..write('tireWall: $tireWall, ')
          ..write('wheelDiameter: $wheelDiameter, ')
          ..write('manufacturer: $manufacturer, ')
          ..write('dot: $dot, ')
          ..write('profileDepth: $profileDepth')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, vehicleId, width, tireWall, wheelDiameter,
      manufacturer, dot, profileDepth);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TireData &&
          other.id == this.id &&
          other.vehicleId == this.vehicleId &&
          other.width == this.width &&
          other.tireWall == this.tireWall &&
          other.wheelDiameter == this.wheelDiameter &&
          other.manufacturer == this.manufacturer &&
          other.dot == this.dot &&
          other.profileDepth == this.profileDepth);
}

class TireCompanion extends UpdateCompanion<TireData> {
  final Value<int> id;
  final Value<int> vehicleId;
  final Value<int> width;
  final Value<int> tireWall;
  final Value<int> wheelDiameter;
  final Value<String> manufacturer;
  final Value<DateTime?> dot;
  final Value<double?> profileDepth;
  const TireCompanion({
    this.id = const Value.absent(),
    this.vehicleId = const Value.absent(),
    this.width = const Value.absent(),
    this.tireWall = const Value.absent(),
    this.wheelDiameter = const Value.absent(),
    this.manufacturer = const Value.absent(),
    this.dot = const Value.absent(),
    this.profileDepth = const Value.absent(),
  });
  TireCompanion.insert({
    this.id = const Value.absent(),
    required int vehicleId,
    required int width,
    required int tireWall,
    required int wheelDiameter,
    required String manufacturer,
    this.dot = const Value.absent(),
    this.profileDepth = const Value.absent(),
  })  : vehicleId = Value(vehicleId),
        width = Value(width),
        tireWall = Value(tireWall),
        wheelDiameter = Value(wheelDiameter),
        manufacturer = Value(manufacturer);
  static Insertable<TireData> custom({
    Expression<int>? id,
    Expression<int>? vehicleId,
    Expression<int>? width,
    Expression<int>? tireWall,
    Expression<int>? wheelDiameter,
    Expression<String>? manufacturer,
    Expression<DateTime?>? dot,
    Expression<double?>? profileDepth,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (vehicleId != null) 'vehicle_id': vehicleId,
      if (width != null) 'width': width,
      if (tireWall != null) 'tire_wall': tireWall,
      if (wheelDiameter != null) 'wheel_diameter': wheelDiameter,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (dot != null) 'dot': dot,
      if (profileDepth != null) 'profile_depth': profileDepth,
    });
  }

  TireCompanion copyWith(
      {Value<int>? id,
      Value<int>? vehicleId,
      Value<int>? width,
      Value<int>? tireWall,
      Value<int>? wheelDiameter,
      Value<String>? manufacturer,
      Value<DateTime?>? dot,
      Value<double?>? profileDepth}) {
    return TireCompanion(
      id: id ?? this.id,
      vehicleId: vehicleId ?? this.vehicleId,
      width: width ?? this.width,
      tireWall: tireWall ?? this.tireWall,
      wheelDiameter: wheelDiameter ?? this.wheelDiameter,
      manufacturer: manufacturer ?? this.manufacturer,
      dot: dot ?? this.dot,
      profileDepth: profileDepth ?? this.profileDepth,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (vehicleId.present) {
      map['vehicle_id'] = Variable<int>(vehicleId.value);
    }
    if (width.present) {
      map['width'] = Variable<int>(width.value);
    }
    if (tireWall.present) {
      map['tire_wall'] = Variable<int>(tireWall.value);
    }
    if (wheelDiameter.present) {
      map['wheel_diameter'] = Variable<int>(wheelDiameter.value);
    }
    if (manufacturer.present) {
      map['manufacturer'] = Variable<String>(manufacturer.value);
    }
    if (dot.present) {
      map['dot'] = Variable<DateTime?>(dot.value);
    }
    if (profileDepth.present) {
      map['profile_depth'] = Variable<double?>(profileDepth.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TireCompanion(')
          ..write('id: $id, ')
          ..write('vehicleId: $vehicleId, ')
          ..write('width: $width, ')
          ..write('tireWall: $tireWall, ')
          ..write('wheelDiameter: $wheelDiameter, ')
          ..write('manufacturer: $manufacturer, ')
          ..write('dot: $dot, ')
          ..write('profileDepth: $profileDepth')
          ..write(')'))
        .toString();
  }
}

class $TireTable extends Tire with TableInfo<$TireTable, TireData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TireTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _vehicleIdMeta = const VerificationMeta('vehicleId');
  @override
  late final GeneratedColumn<int?> vehicleId = GeneratedColumn<int?>(
      'vehicle_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES vehicle (id)');
  final VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<int?> width = GeneratedColumn<int?>(
      'width', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _tireWallMeta = const VerificationMeta('tireWall');
  @override
  late final GeneratedColumn<int?> tireWall = GeneratedColumn<int?>(
      'tire_wall', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _wheelDiameterMeta =
      const VerificationMeta('wheelDiameter');
  @override
  late final GeneratedColumn<int?> wheelDiameter = GeneratedColumn<int?>(
      'wheel_diameter', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _manufacturerMeta =
      const VerificationMeta('manufacturer');
  @override
  late final GeneratedColumn<String?> manufacturer = GeneratedColumn<String?>(
      'manufacturer', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _dotMeta = const VerificationMeta('dot');
  @override
  late final GeneratedColumn<DateTime?> dot = GeneratedColumn<DateTime?>(
      'dot', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _profileDepthMeta =
      const VerificationMeta('profileDepth');
  @override
  late final GeneratedColumn<double?> profileDepth = GeneratedColumn<double?>(
      'profile_depth', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        vehicleId,
        width,
        tireWall,
        wheelDiameter,
        manufacturer,
        dot,
        profileDepth
      ];
  @override
  String get aliasedName => _alias ?? 'tire';
  @override
  String get actualTableName => 'tire';
  @override
  VerificationContext validateIntegrity(Insertable<TireData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('vehicle_id')) {
      context.handle(_vehicleIdMeta,
          vehicleId.isAcceptableOrUnknown(data['vehicle_id']!, _vehicleIdMeta));
    } else if (isInserting) {
      context.missing(_vehicleIdMeta);
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    } else if (isInserting) {
      context.missing(_widthMeta);
    }
    if (data.containsKey('tire_wall')) {
      context.handle(_tireWallMeta,
          tireWall.isAcceptableOrUnknown(data['tire_wall']!, _tireWallMeta));
    } else if (isInserting) {
      context.missing(_tireWallMeta);
    }
    if (data.containsKey('wheel_diameter')) {
      context.handle(
          _wheelDiameterMeta,
          wheelDiameter.isAcceptableOrUnknown(
              data['wheel_diameter']!, _wheelDiameterMeta));
    } else if (isInserting) {
      context.missing(_wheelDiameterMeta);
    }
    if (data.containsKey('manufacturer')) {
      context.handle(
          _manufacturerMeta,
          manufacturer.isAcceptableOrUnknown(
              data['manufacturer']!, _manufacturerMeta));
    } else if (isInserting) {
      context.missing(_manufacturerMeta);
    }
    if (data.containsKey('dot')) {
      context.handle(
          _dotMeta, dot.isAcceptableOrUnknown(data['dot']!, _dotMeta));
    }
    if (data.containsKey('profile_depth')) {
      context.handle(
          _profileDepthMeta,
          profileDepth.isAcceptableOrUnknown(
              data['profile_depth']!, _profileDepthMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TireData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TireData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TireTable createAlias(String alias) {
    return $TireTable(attachedDatabase, alias);
  }
}

class TireSetupData extends DataClass implements Insertable<TireSetupData> {
  final int id;
  final int groupId;
  final int vehicleId;
  final int tireId;
  final String positionEnum;
  TireSetupData(
      {required this.id,
      required this.groupId,
      required this.vehicleId,
      required this.tireId,
      required this.positionEnum});
  factory TireSetupData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TireSetupData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      groupId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}group_id'])!,
      vehicleId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vehicle_id'])!,
      tireId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tire_id'])!,
      positionEnum: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}position_enum'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['group_id'] = Variable<int>(groupId);
    map['vehicle_id'] = Variable<int>(vehicleId);
    map['tire_id'] = Variable<int>(tireId);
    map['position_enum'] = Variable<String>(positionEnum);
    return map;
  }

  TireSetupCompanion toCompanion(bool nullToAbsent) {
    return TireSetupCompanion(
      id: Value(id),
      groupId: Value(groupId),
      vehicleId: Value(vehicleId),
      tireId: Value(tireId),
      positionEnum: Value(positionEnum),
    );
  }

  factory TireSetupData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TireSetupData(
      id: serializer.fromJson<int>(json['id']),
      groupId: serializer.fromJson<int>(json['groupId']),
      vehicleId: serializer.fromJson<int>(json['vehicleId']),
      tireId: serializer.fromJson<int>(json['tireId']),
      positionEnum: serializer.fromJson<String>(json['positionEnum']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'groupId': serializer.toJson<int>(groupId),
      'vehicleId': serializer.toJson<int>(vehicleId),
      'tireId': serializer.toJson<int>(tireId),
      'positionEnum': serializer.toJson<String>(positionEnum),
    };
  }

  TireSetupData copyWith(
          {int? id,
          int? groupId,
          int? vehicleId,
          int? tireId,
          String? positionEnum}) =>
      TireSetupData(
        id: id ?? this.id,
        groupId: groupId ?? this.groupId,
        vehicleId: vehicleId ?? this.vehicleId,
        tireId: tireId ?? this.tireId,
        positionEnum: positionEnum ?? this.positionEnum,
      );
  @override
  String toString() {
    return (StringBuffer('TireSetupData(')
          ..write('id: $id, ')
          ..write('groupId: $groupId, ')
          ..write('vehicleId: $vehicleId, ')
          ..write('tireId: $tireId, ')
          ..write('positionEnum: $positionEnum')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, groupId, vehicleId, tireId, positionEnum);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TireSetupData &&
          other.id == this.id &&
          other.groupId == this.groupId &&
          other.vehicleId == this.vehicleId &&
          other.tireId == this.tireId &&
          other.positionEnum == this.positionEnum);
}

class TireSetupCompanion extends UpdateCompanion<TireSetupData> {
  final Value<int> id;
  final Value<int> groupId;
  final Value<int> vehicleId;
  final Value<int> tireId;
  final Value<String> positionEnum;
  const TireSetupCompanion({
    this.id = const Value.absent(),
    this.groupId = const Value.absent(),
    this.vehicleId = const Value.absent(),
    this.tireId = const Value.absent(),
    this.positionEnum = const Value.absent(),
  });
  TireSetupCompanion.insert({
    this.id = const Value.absent(),
    required int groupId,
    required int vehicleId,
    required int tireId,
    required String positionEnum,
  })  : groupId = Value(groupId),
        vehicleId = Value(vehicleId),
        tireId = Value(tireId),
        positionEnum = Value(positionEnum);
  static Insertable<TireSetupData> custom({
    Expression<int>? id,
    Expression<int>? groupId,
    Expression<int>? vehicleId,
    Expression<int>? tireId,
    Expression<String>? positionEnum,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (groupId != null) 'group_id': groupId,
      if (vehicleId != null) 'vehicle_id': vehicleId,
      if (tireId != null) 'tire_id': tireId,
      if (positionEnum != null) 'position_enum': positionEnum,
    });
  }

  TireSetupCompanion copyWith(
      {Value<int>? id,
      Value<int>? groupId,
      Value<int>? vehicleId,
      Value<int>? tireId,
      Value<String>? positionEnum}) {
    return TireSetupCompanion(
      id: id ?? this.id,
      groupId: groupId ?? this.groupId,
      vehicleId: vehicleId ?? this.vehicleId,
      tireId: tireId ?? this.tireId,
      positionEnum: positionEnum ?? this.positionEnum,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (groupId.present) {
      map['group_id'] = Variable<int>(groupId.value);
    }
    if (vehicleId.present) {
      map['vehicle_id'] = Variable<int>(vehicleId.value);
    }
    if (tireId.present) {
      map['tire_id'] = Variable<int>(tireId.value);
    }
    if (positionEnum.present) {
      map['position_enum'] = Variable<String>(positionEnum.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TireSetupCompanion(')
          ..write('id: $id, ')
          ..write('groupId: $groupId, ')
          ..write('vehicleId: $vehicleId, ')
          ..write('tireId: $tireId, ')
          ..write('positionEnum: $positionEnum')
          ..write(')'))
        .toString();
  }
}

class $TireSetupTable extends TireSetup
    with TableInfo<$TireSetupTable, TireSetupData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TireSetupTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _groupIdMeta = const VerificationMeta('groupId');
  @override
  late final GeneratedColumn<int?> groupId = GeneratedColumn<int?>(
      'group_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _vehicleIdMeta = const VerificationMeta('vehicleId');
  @override
  late final GeneratedColumn<int?> vehicleId = GeneratedColumn<int?>(
      'vehicle_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES vehicle (id)');
  final VerificationMeta _tireIdMeta = const VerificationMeta('tireId');
  @override
  late final GeneratedColumn<int?> tireId = GeneratedColumn<int?>(
      'tire_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES tire (id)');
  final VerificationMeta _positionEnumMeta =
      const VerificationMeta('positionEnum');
  @override
  late final GeneratedColumn<String?> positionEnum = GeneratedColumn<String?>(
      'position_enum', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, groupId, vehicleId, tireId, positionEnum];
  @override
  String get aliasedName => _alias ?? 'tire_setup';
  @override
  String get actualTableName => 'tire_setup';
  @override
  VerificationContext validateIntegrity(Insertable<TireSetupData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('group_id')) {
      context.handle(_groupIdMeta,
          groupId.isAcceptableOrUnknown(data['group_id']!, _groupIdMeta));
    } else if (isInserting) {
      context.missing(_groupIdMeta);
    }
    if (data.containsKey('vehicle_id')) {
      context.handle(_vehicleIdMeta,
          vehicleId.isAcceptableOrUnknown(data['vehicle_id']!, _vehicleIdMeta));
    } else if (isInserting) {
      context.missing(_vehicleIdMeta);
    }
    if (data.containsKey('tire_id')) {
      context.handle(_tireIdMeta,
          tireId.isAcceptableOrUnknown(data['tire_id']!, _tireIdMeta));
    } else if (isInserting) {
      context.missing(_tireIdMeta);
    }
    if (data.containsKey('position_enum')) {
      context.handle(
          _positionEnumMeta,
          positionEnum.isAcceptableOrUnknown(
              data['position_enum']!, _positionEnumMeta));
    } else if (isInserting) {
      context.missing(_positionEnumMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TireSetupData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TireSetupData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TireSetupTable createAlias(String alias) {
    return $TireSetupTable(attachedDatabase, alias);
  }
}

class LogData extends DataClass implements Insertable<LogData> {
  final int id;
  final int vehicleId;
  final String title;
  final String content;
  final int logTypeId;
  final int currentMileage;
  final DateTime logTimestamp;
  final double? cost;
  final double? costPerUnit;
  final double? refillAmount;
  final double? approxRefillPercentOfTank;
  final int? gasStationId;
  final int? tireSetupGroupId;
  LogData(
      {required this.id,
      required this.vehicleId,
      required this.title,
      required this.content,
      required this.logTypeId,
      required this.currentMileage,
      required this.logTimestamp,
      this.cost,
      this.costPerUnit,
      this.refillAmount,
      this.approxRefillPercentOfTank,
      this.gasStationId,
      this.tireSetupGroupId});
  factory LogData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return LogData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      vehicleId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vehicle_id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      content: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}content'])!,
      logTypeId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}log_type_id'])!,
      currentMileage: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}current_mileage'])!,
      logTimestamp: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}log_timestamp'])!,
      cost: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cost']),
      costPerUnit: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cost_per_unit']),
      refillAmount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}refill_amount']),
      approxRefillPercentOfTank: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}approx_refill_percent_of_tank']),
      gasStationId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gas_station_id']),
      tireSetupGroupId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}tire_setup_group_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['vehicle_id'] = Variable<int>(vehicleId);
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    map['log_type_id'] = Variable<int>(logTypeId);
    map['current_mileage'] = Variable<int>(currentMileage);
    map['log_timestamp'] = Variable<DateTime>(logTimestamp);
    if (!nullToAbsent || cost != null) {
      map['cost'] = Variable<double?>(cost);
    }
    if (!nullToAbsent || costPerUnit != null) {
      map['cost_per_unit'] = Variable<double?>(costPerUnit);
    }
    if (!nullToAbsent || refillAmount != null) {
      map['refill_amount'] = Variable<double?>(refillAmount);
    }
    if (!nullToAbsent || approxRefillPercentOfTank != null) {
      map['approx_refill_percent_of_tank'] =
          Variable<double?>(approxRefillPercentOfTank);
    }
    if (!nullToAbsent || gasStationId != null) {
      map['gas_station_id'] = Variable<int?>(gasStationId);
    }
    if (!nullToAbsent || tireSetupGroupId != null) {
      map['tire_setup_group_id'] = Variable<int?>(tireSetupGroupId);
    }
    return map;
  }

  LogCompanion toCompanion(bool nullToAbsent) {
    return LogCompanion(
      id: Value(id),
      vehicleId: Value(vehicleId),
      title: Value(title),
      content: Value(content),
      logTypeId: Value(logTypeId),
      currentMileage: Value(currentMileage),
      logTimestamp: Value(logTimestamp),
      cost: cost == null && nullToAbsent ? const Value.absent() : Value(cost),
      costPerUnit: costPerUnit == null && nullToAbsent
          ? const Value.absent()
          : Value(costPerUnit),
      refillAmount: refillAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(refillAmount),
      approxRefillPercentOfTank:
          approxRefillPercentOfTank == null && nullToAbsent
              ? const Value.absent()
              : Value(approxRefillPercentOfTank),
      gasStationId: gasStationId == null && nullToAbsent
          ? const Value.absent()
          : Value(gasStationId),
      tireSetupGroupId: tireSetupGroupId == null && nullToAbsent
          ? const Value.absent()
          : Value(tireSetupGroupId),
    );
  }

  factory LogData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LogData(
      id: serializer.fromJson<int>(json['id']),
      vehicleId: serializer.fromJson<int>(json['vehicleId']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      logTypeId: serializer.fromJson<int>(json['logTypeId']),
      currentMileage: serializer.fromJson<int>(json['currentMileage']),
      logTimestamp: serializer.fromJson<DateTime>(json['logTimestamp']),
      cost: serializer.fromJson<double?>(json['cost']),
      costPerUnit: serializer.fromJson<double?>(json['costPerUnit']),
      refillAmount: serializer.fromJson<double?>(json['refillAmount']),
      approxRefillPercentOfTank:
          serializer.fromJson<double?>(json['approxRefillPercentOfTank']),
      gasStationId: serializer.fromJson<int?>(json['gasStationId']),
      tireSetupGroupId: serializer.fromJson<int?>(json['tireSetupGroupId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'vehicleId': serializer.toJson<int>(vehicleId),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'logTypeId': serializer.toJson<int>(logTypeId),
      'currentMileage': serializer.toJson<int>(currentMileage),
      'logTimestamp': serializer.toJson<DateTime>(logTimestamp),
      'cost': serializer.toJson<double?>(cost),
      'costPerUnit': serializer.toJson<double?>(costPerUnit),
      'refillAmount': serializer.toJson<double?>(refillAmount),
      'approxRefillPercentOfTank':
          serializer.toJson<double?>(approxRefillPercentOfTank),
      'gasStationId': serializer.toJson<int?>(gasStationId),
      'tireSetupGroupId': serializer.toJson<int?>(tireSetupGroupId),
    };
  }

  LogData copyWith(
          {int? id,
          int? vehicleId,
          String? title,
          String? content,
          int? logTypeId,
          int? currentMileage,
          DateTime? logTimestamp,
          double? cost,
          double? costPerUnit,
          double? refillAmount,
          double? approxRefillPercentOfTank,
          int? gasStationId,
          int? tireSetupGroupId}) =>
      LogData(
        id: id ?? this.id,
        vehicleId: vehicleId ?? this.vehicleId,
        title: title ?? this.title,
        content: content ?? this.content,
        logTypeId: logTypeId ?? this.logTypeId,
        currentMileage: currentMileage ?? this.currentMileage,
        logTimestamp: logTimestamp ?? this.logTimestamp,
        cost: cost ?? this.cost,
        costPerUnit: costPerUnit ?? this.costPerUnit,
        refillAmount: refillAmount ?? this.refillAmount,
        approxRefillPercentOfTank:
            approxRefillPercentOfTank ?? this.approxRefillPercentOfTank,
        gasStationId: gasStationId ?? this.gasStationId,
        tireSetupGroupId: tireSetupGroupId ?? this.tireSetupGroupId,
      );
  @override
  String toString() {
    return (StringBuffer('LogData(')
          ..write('id: $id, ')
          ..write('vehicleId: $vehicleId, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('logTypeId: $logTypeId, ')
          ..write('currentMileage: $currentMileage, ')
          ..write('logTimestamp: $logTimestamp, ')
          ..write('cost: $cost, ')
          ..write('costPerUnit: $costPerUnit, ')
          ..write('refillAmount: $refillAmount, ')
          ..write('approxRefillPercentOfTank: $approxRefillPercentOfTank, ')
          ..write('gasStationId: $gasStationId, ')
          ..write('tireSetupGroupId: $tireSetupGroupId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      vehicleId,
      title,
      content,
      logTypeId,
      currentMileage,
      logTimestamp,
      cost,
      costPerUnit,
      refillAmount,
      approxRefillPercentOfTank,
      gasStationId,
      tireSetupGroupId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LogData &&
          other.id == this.id &&
          other.vehicleId == this.vehicleId &&
          other.title == this.title &&
          other.content == this.content &&
          other.logTypeId == this.logTypeId &&
          other.currentMileage == this.currentMileage &&
          other.logTimestamp == this.logTimestamp &&
          other.cost == this.cost &&
          other.costPerUnit == this.costPerUnit &&
          other.refillAmount == this.refillAmount &&
          other.approxRefillPercentOfTank == this.approxRefillPercentOfTank &&
          other.gasStationId == this.gasStationId &&
          other.tireSetupGroupId == this.tireSetupGroupId);
}

class LogCompanion extends UpdateCompanion<LogData> {
  final Value<int> id;
  final Value<int> vehicleId;
  final Value<String> title;
  final Value<String> content;
  final Value<int> logTypeId;
  final Value<int> currentMileage;
  final Value<DateTime> logTimestamp;
  final Value<double?> cost;
  final Value<double?> costPerUnit;
  final Value<double?> refillAmount;
  final Value<double?> approxRefillPercentOfTank;
  final Value<int?> gasStationId;
  final Value<int?> tireSetupGroupId;
  const LogCompanion({
    this.id = const Value.absent(),
    this.vehicleId = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.logTypeId = const Value.absent(),
    this.currentMileage = const Value.absent(),
    this.logTimestamp = const Value.absent(),
    this.cost = const Value.absent(),
    this.costPerUnit = const Value.absent(),
    this.refillAmount = const Value.absent(),
    this.approxRefillPercentOfTank = const Value.absent(),
    this.gasStationId = const Value.absent(),
    this.tireSetupGroupId = const Value.absent(),
  });
  LogCompanion.insert({
    this.id = const Value.absent(),
    required int vehicleId,
    required String title,
    required String content,
    required int logTypeId,
    required int currentMileage,
    required DateTime logTimestamp,
    this.cost = const Value.absent(),
    this.costPerUnit = const Value.absent(),
    this.refillAmount = const Value.absent(),
    this.approxRefillPercentOfTank = const Value.absent(),
    this.gasStationId = const Value.absent(),
    this.tireSetupGroupId = const Value.absent(),
  })  : vehicleId = Value(vehicleId),
        title = Value(title),
        content = Value(content),
        logTypeId = Value(logTypeId),
        currentMileage = Value(currentMileage),
        logTimestamp = Value(logTimestamp);
  static Insertable<LogData> custom({
    Expression<int>? id,
    Expression<int>? vehicleId,
    Expression<String>? title,
    Expression<String>? content,
    Expression<int>? logTypeId,
    Expression<int>? currentMileage,
    Expression<DateTime>? logTimestamp,
    Expression<double?>? cost,
    Expression<double?>? costPerUnit,
    Expression<double?>? refillAmount,
    Expression<double?>? approxRefillPercentOfTank,
    Expression<int?>? gasStationId,
    Expression<int?>? tireSetupGroupId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (vehicleId != null) 'vehicle_id': vehicleId,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (logTypeId != null) 'log_type_id': logTypeId,
      if (currentMileage != null) 'current_mileage': currentMileage,
      if (logTimestamp != null) 'log_timestamp': logTimestamp,
      if (cost != null) 'cost': cost,
      if (costPerUnit != null) 'cost_per_unit': costPerUnit,
      if (refillAmount != null) 'refill_amount': refillAmount,
      if (approxRefillPercentOfTank != null)
        'approx_refill_percent_of_tank': approxRefillPercentOfTank,
      if (gasStationId != null) 'gas_station_id': gasStationId,
      if (tireSetupGroupId != null) 'tire_setup_group_id': tireSetupGroupId,
    });
  }

  LogCompanion copyWith(
      {Value<int>? id,
      Value<int>? vehicleId,
      Value<String>? title,
      Value<String>? content,
      Value<int>? logTypeId,
      Value<int>? currentMileage,
      Value<DateTime>? logTimestamp,
      Value<double?>? cost,
      Value<double?>? costPerUnit,
      Value<double?>? refillAmount,
      Value<double?>? approxRefillPercentOfTank,
      Value<int?>? gasStationId,
      Value<int?>? tireSetupGroupId}) {
    return LogCompanion(
      id: id ?? this.id,
      vehicleId: vehicleId ?? this.vehicleId,
      title: title ?? this.title,
      content: content ?? this.content,
      logTypeId: logTypeId ?? this.logTypeId,
      currentMileage: currentMileage ?? this.currentMileage,
      logTimestamp: logTimestamp ?? this.logTimestamp,
      cost: cost ?? this.cost,
      costPerUnit: costPerUnit ?? this.costPerUnit,
      refillAmount: refillAmount ?? this.refillAmount,
      approxRefillPercentOfTank:
          approxRefillPercentOfTank ?? this.approxRefillPercentOfTank,
      gasStationId: gasStationId ?? this.gasStationId,
      tireSetupGroupId: tireSetupGroupId ?? this.tireSetupGroupId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (vehicleId.present) {
      map['vehicle_id'] = Variable<int>(vehicleId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (logTypeId.present) {
      map['log_type_id'] = Variable<int>(logTypeId.value);
    }
    if (currentMileage.present) {
      map['current_mileage'] = Variable<int>(currentMileage.value);
    }
    if (logTimestamp.present) {
      map['log_timestamp'] = Variable<DateTime>(logTimestamp.value);
    }
    if (cost.present) {
      map['cost'] = Variable<double?>(cost.value);
    }
    if (costPerUnit.present) {
      map['cost_per_unit'] = Variable<double?>(costPerUnit.value);
    }
    if (refillAmount.present) {
      map['refill_amount'] = Variable<double?>(refillAmount.value);
    }
    if (approxRefillPercentOfTank.present) {
      map['approx_refill_percent_of_tank'] =
          Variable<double?>(approxRefillPercentOfTank.value);
    }
    if (gasStationId.present) {
      map['gas_station_id'] = Variable<int?>(gasStationId.value);
    }
    if (tireSetupGroupId.present) {
      map['tire_setup_group_id'] = Variable<int?>(tireSetupGroupId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LogCompanion(')
          ..write('id: $id, ')
          ..write('vehicleId: $vehicleId, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('logTypeId: $logTypeId, ')
          ..write('currentMileage: $currentMileage, ')
          ..write('logTimestamp: $logTimestamp, ')
          ..write('cost: $cost, ')
          ..write('costPerUnit: $costPerUnit, ')
          ..write('refillAmount: $refillAmount, ')
          ..write('approxRefillPercentOfTank: $approxRefillPercentOfTank, ')
          ..write('gasStationId: $gasStationId, ')
          ..write('tireSetupGroupId: $tireSetupGroupId')
          ..write(')'))
        .toString();
  }
}

class $LogTable extends Log with TableInfo<$LogTable, LogData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LogTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _vehicleIdMeta = const VerificationMeta('vehicleId');
  @override
  late final GeneratedColumn<int?> vehicleId = GeneratedColumn<int?>(
      'vehicle_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES vehicle (id)');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 128),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _contentMeta = const VerificationMeta('content');
  @override
  late final GeneratedColumn<String?> content = GeneratedColumn<String?>(
      'content', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _logTypeIdMeta = const VerificationMeta('logTypeId');
  @override
  late final GeneratedColumn<int?> logTypeId = GeneratedColumn<int?>(
      'log_type_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES log_type (id)');
  final VerificationMeta _currentMileageMeta =
      const VerificationMeta('currentMileage');
  @override
  late final GeneratedColumn<int?> currentMileage = GeneratedColumn<int?>(
      'current_mileage', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _logTimestampMeta =
      const VerificationMeta('logTimestamp');
  @override
  late final GeneratedColumn<DateTime?> logTimestamp =
      GeneratedColumn<DateTime?>('log_timestamp', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _costMeta = const VerificationMeta('cost');
  @override
  late final GeneratedColumn<double?> cost = GeneratedColumn<double?>(
      'cost', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _costPerUnitMeta =
      const VerificationMeta('costPerUnit');
  @override
  late final GeneratedColumn<double?> costPerUnit = GeneratedColumn<double?>(
      'cost_per_unit', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _refillAmountMeta =
      const VerificationMeta('refillAmount');
  @override
  late final GeneratedColumn<double?> refillAmount = GeneratedColumn<double?>(
      'refill_amount', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _approxRefillPercentOfTankMeta =
      const VerificationMeta('approxRefillPercentOfTank');
  @override
  late final GeneratedColumn<double?> approxRefillPercentOfTank =
      GeneratedColumn<double?>(
          'approx_refill_percent_of_tank', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _gasStationIdMeta =
      const VerificationMeta('gasStationId');
  @override
  late final GeneratedColumn<int?> gasStationId = GeneratedColumn<int?>(
      'gas_station_id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES gas_stations (id)');
  final VerificationMeta _tireSetupGroupIdMeta =
      const VerificationMeta('tireSetupGroupId');
  @override
  late final GeneratedColumn<int?> tireSetupGroupId = GeneratedColumn<int?>(
      'tire_setup_group_id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES tire_setup (group_id)');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        vehicleId,
        title,
        content,
        logTypeId,
        currentMileage,
        logTimestamp,
        cost,
        costPerUnit,
        refillAmount,
        approxRefillPercentOfTank,
        gasStationId,
        tireSetupGroupId
      ];
  @override
  String get aliasedName => _alias ?? 'log';
  @override
  String get actualTableName => 'log';
  @override
  VerificationContext validateIntegrity(Insertable<LogData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('vehicle_id')) {
      context.handle(_vehicleIdMeta,
          vehicleId.isAcceptableOrUnknown(data['vehicle_id']!, _vehicleIdMeta));
    } else if (isInserting) {
      context.missing(_vehicleIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('log_type_id')) {
      context.handle(
          _logTypeIdMeta,
          logTypeId.isAcceptableOrUnknown(
              data['log_type_id']!, _logTypeIdMeta));
    } else if (isInserting) {
      context.missing(_logTypeIdMeta);
    }
    if (data.containsKey('current_mileage')) {
      context.handle(
          _currentMileageMeta,
          currentMileage.isAcceptableOrUnknown(
              data['current_mileage']!, _currentMileageMeta));
    } else if (isInserting) {
      context.missing(_currentMileageMeta);
    }
    if (data.containsKey('log_timestamp')) {
      context.handle(
          _logTimestampMeta,
          logTimestamp.isAcceptableOrUnknown(
              data['log_timestamp']!, _logTimestampMeta));
    } else if (isInserting) {
      context.missing(_logTimestampMeta);
    }
    if (data.containsKey('cost')) {
      context.handle(
          _costMeta, cost.isAcceptableOrUnknown(data['cost']!, _costMeta));
    }
    if (data.containsKey('cost_per_unit')) {
      context.handle(
          _costPerUnitMeta,
          costPerUnit.isAcceptableOrUnknown(
              data['cost_per_unit']!, _costPerUnitMeta));
    }
    if (data.containsKey('refill_amount')) {
      context.handle(
          _refillAmountMeta,
          refillAmount.isAcceptableOrUnknown(
              data['refill_amount']!, _refillAmountMeta));
    }
    if (data.containsKey('approx_refill_percent_of_tank')) {
      context.handle(
          _approxRefillPercentOfTankMeta,
          approxRefillPercentOfTank.isAcceptableOrUnknown(
              data['approx_refill_percent_of_tank']!,
              _approxRefillPercentOfTankMeta));
    }
    if (data.containsKey('gas_station_id')) {
      context.handle(
          _gasStationIdMeta,
          gasStationId.isAcceptableOrUnknown(
              data['gas_station_id']!, _gasStationIdMeta));
    }
    if (data.containsKey('tire_setup_group_id')) {
      context.handle(
          _tireSetupGroupIdMeta,
          tireSetupGroupId.isAcceptableOrUnknown(
              data['tire_setup_group_id']!, _tireSetupGroupIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LogData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return LogData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LogTable createAlias(String alias) {
    return $LogTable(attachedDatabase, alias);
  }
}

class GasStation extends DataClass implements Insertable<GasStation> {
  /// TankstellenID
  final int id;

  /// Tankstellenname
  final String name;
  GasStation({required this.id, required this.name});
  factory GasStation.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return GasStation(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  GasStationsCompanion toCompanion(bool nullToAbsent) {
    return GasStationsCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory GasStation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GasStation(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  GasStation copyWith({int? id, String? name}) => GasStation(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('GasStation(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GasStation && other.id == this.id && other.name == this.name);
}

class GasStationsCompanion extends UpdateCompanion<GasStation> {
  final Value<int> id;
  final Value<String> name;
  const GasStationsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  GasStationsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<GasStation> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  GasStationsCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return GasStationsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GasStationsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $GasStationsTable extends GasStations
    with TableInfo<$GasStationsTable, GasStation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GasStationsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? 'gas_stations';
  @override
  String get actualTableName => 'gas_stations';
  @override
  VerificationContext validateIntegrity(Insertable<GasStation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GasStation map(Map<String, dynamic> data, {String? tablePrefix}) {
    return GasStation.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $GasStationsTable createAlias(String alias) {
    return $GasStationsTable(attachedDatabase, alias);
  }
}

class FuelTypeData extends DataClass implements Insertable<FuelTypeData> {
  final int id;
  final String fuel;
  FuelTypeData({required this.id, required this.fuel});
  factory FuelTypeData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FuelTypeData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      fuel: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fuel'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['fuel'] = Variable<String>(fuel);
    return map;
  }

  FuelTypeCompanion toCompanion(bool nullToAbsent) {
    return FuelTypeCompanion(
      id: Value(id),
      fuel: Value(fuel),
    );
  }

  factory FuelTypeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FuelTypeData(
      id: serializer.fromJson<int>(json['id']),
      fuel: serializer.fromJson<String>(json['fuel']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'fuel': serializer.toJson<String>(fuel),
    };
  }

  FuelTypeData copyWith({int? id, String? fuel}) => FuelTypeData(
        id: id ?? this.id,
        fuel: fuel ?? this.fuel,
      );
  @override
  String toString() {
    return (StringBuffer('FuelTypeData(')
          ..write('id: $id, ')
          ..write('fuel: $fuel')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, fuel);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FuelTypeData && other.id == this.id && other.fuel == this.fuel);
}

class FuelTypeCompanion extends UpdateCompanion<FuelTypeData> {
  final Value<int> id;
  final Value<String> fuel;
  const FuelTypeCompanion({
    this.id = const Value.absent(),
    this.fuel = const Value.absent(),
  });
  FuelTypeCompanion.insert({
    this.id = const Value.absent(),
    required String fuel,
  }) : fuel = Value(fuel);
  static Insertable<FuelTypeData> custom({
    Expression<int>? id,
    Expression<String>? fuel,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fuel != null) 'fuel': fuel,
    });
  }

  FuelTypeCompanion copyWith({Value<int>? id, Value<String>? fuel}) {
    return FuelTypeCompanion(
      id: id ?? this.id,
      fuel: fuel ?? this.fuel,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (fuel.present) {
      map['fuel'] = Variable<String>(fuel.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FuelTypeCompanion(')
          ..write('id: $id, ')
          ..write('fuel: $fuel')
          ..write(')'))
        .toString();
  }
}

class $FuelTypeTable extends FuelType
    with TableInfo<$FuelTypeTable, FuelTypeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FuelTypeTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _fuelMeta = const VerificationMeta('fuel');
  @override
  late final GeneratedColumn<String?> fuel = GeneratedColumn<String?>(
      'fuel', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 32),
      type: const StringType(),
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, fuel];
  @override
  String get aliasedName => _alias ?? 'fuel_type';
  @override
  String get actualTableName => 'fuel_type';
  @override
  VerificationContext validateIntegrity(Insertable<FuelTypeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('fuel')) {
      context.handle(
          _fuelMeta, fuel.isAcceptableOrUnknown(data['fuel']!, _fuelMeta));
    } else if (isInserting) {
      context.missing(_fuelMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FuelTypeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FuelTypeData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FuelTypeTable createAlias(String alias) {
    return $FuelTypeTable(attachedDatabase, alias);
  }
}

class LogTypeData extends DataClass implements Insertable<LogTypeData> {
  final int id;
  final String type;
  final String color;
  LogTypeData({required this.id, required this.type, required this.color});
  factory LogTypeData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return LogTypeData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      color: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}color'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['type'] = Variable<String>(type);
    map['color'] = Variable<String>(color);
    return map;
  }

  LogTypeCompanion toCompanion(bool nullToAbsent) {
    return LogTypeCompanion(
      id: Value(id),
      type: Value(type),
      color: Value(color),
    );
  }

  factory LogTypeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LogTypeData(
      id: serializer.fromJson<int>(json['id']),
      type: serializer.fromJson<String>(json['type']),
      color: serializer.fromJson<String>(json['color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'type': serializer.toJson<String>(type),
      'color': serializer.toJson<String>(color),
    };
  }

  LogTypeData copyWith({int? id, String? type, String? color}) => LogTypeData(
        id: id ?? this.id,
        type: type ?? this.type,
        color: color ?? this.color,
      );
  @override
  String toString() {
    return (StringBuffer('LogTypeData(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, type, color);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LogTypeData &&
          other.id == this.id &&
          other.type == this.type &&
          other.color == this.color);
}

class LogTypeCompanion extends UpdateCompanion<LogTypeData> {
  final Value<int> id;
  final Value<String> type;
  final Value<String> color;
  const LogTypeCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.color = const Value.absent(),
  });
  LogTypeCompanion.insert({
    this.id = const Value.absent(),
    required String type,
    required String color,
  })  : type = Value(type),
        color = Value(color);
  static Insertable<LogTypeData> custom({
    Expression<int>? id,
    Expression<String>? type,
    Expression<String>? color,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (color != null) 'color': color,
    });
  }

  LogTypeCompanion copyWith(
      {Value<int>? id, Value<String>? type, Value<String>? color}) {
    return LogTypeCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      color: color ?? this.color,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LogTypeCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }
}

class $LogTypeTable extends LogType with TableInfo<$LogTypeTable, LogTypeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LogTypeTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String?> color = GeneratedColumn<String?>(
      'color', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, type, color];
  @override
  String get aliasedName => _alias ?? 'log_type';
  @override
  String get actualTableName => 'log_type';
  @override
  VerificationContext validateIntegrity(Insertable<LogTypeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LogTypeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return LogTypeData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LogTypeTable createAlias(String alias) {
    return $LogTypeTable(attachedDatabase, alias);
  }
}

abstract class _$DBController extends GeneratedDatabase {
  _$DBController(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $VehicleTable vehicle = $VehicleTable(this);
<<<<<<< HEAD
  late final $SettingsTable settings = $SettingsTable(this);
=======
  late final $SettingTable setting = $SettingTable(this);
>>>>>>> 76bb282adde9b55a7a9c45da73a6c0623ebf00bd
  late final $TireTable tire = $TireTable(this);
  late final $TireSetupTable tireSetup = $TireSetupTable(this);
  late final $LogTable log = $LogTable(this);
  late final $GasStationsTable gasStations = $GasStationsTable(this);
  late final $FuelTypeTable fuelType = $FuelTypeTable(this);
  late final $LogTypeTable logType = $LogTypeTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
<<<<<<< HEAD
      [vehicle, settings, tire, tireSetup, log, gasStations, fuelType, logType];
=======
      [vehicle, setting, tire, tireSetup, log, gasStations, fuelType, logType];
>>>>>>> 76bb282adde9b55a7a9c45da73a6c0623ebf00bd
}
