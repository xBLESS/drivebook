import 'package:flutter/material.dart';
import 'package:drift/drift.dart';

part 'vehicle.g.dart';

// class Vehicle extends ChangeNotifier{
class Vehicle extends Table {
  // final String iId;
  // final String strManufacturer;
  // final String strModel;
  // final DateTime dtBuildDate;

  IntColumn get id => integer().autoincrement()();
  TextColumn get make => text().withLength(max: 64)();

  // final int iOdometer;

  // final String strImageUrl;

  // Vehicle({
  //   required this.iId,
  //   required this.strManufacturer,
  //   required this.strModel,
  //   required this.strImageUrl,
  //   required this.dtBuildDate,
  //   required this.iOdometer,
  // });

  // static Vehicle fromMap(Map<String, dynamic> data) {
  //   return Vehicle(
  //     iId: data['\$id'],
  //     strManufacturer: data['Make'],
  //     strModel: data['Model'],
  //     dtBuildDate: DateTime.parse(data['BuildDate']),
  //     iOdometer: data['Odometer'],
  //     strImageUrl: '',
  //   );
  // }

  // toMap() {
  //   return {
  //     '\$id': iId,
  //     'Make': strManufacturer,
  //     'Model': strModel,
  //     'BuildDate': dtBuildDate,
  //     'Odometer': iOdometer,
  //     '': strImageUrl,
  //   };
  // }
}
