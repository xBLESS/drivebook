import 'package:drivebook/models/dbcontroller.dart';
import 'package:flutter/material.dart';

class VehicleProvider extends ChangeNotifier {
  // Voll dumm, geht aber also doch nicht dumm
  VehicleData vehicle = VehicleCompanion() as VehicleData;

  int get getPrimaryFuelType => vehicle.primaryFuelTypeId;
  double get getPrimaryFuelCapacity => vehicle.primaryFuelCapacity;
}
