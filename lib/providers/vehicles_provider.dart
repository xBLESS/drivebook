import 'package:drift/drift.dart';
import 'package:drivebook/models/dbcontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VehiclesProvider extends ChangeNotifier {
  final BuildContext context;

  List<VehicleData> _vehicles = [];

  VehiclesProvider(this.context);

  List<VehicleData> get getAllVehicles => _vehicles;

  Future<List<VehicleData>> loadVehicles() async {
    DBController dbc = Provider.of<DBController>(context);
    _vehicles = await dbc.getAllVehicles;
    notifyListeners();
    return _vehicles;
  }

  // void get getVehiclesVoid async {
  //   // _isLoading = true;
  //   await dbc.getAllVehicles;
  //   notifyListeners();
  // }

  void addVehicle(VehicleData vehicle) async {
    DBController dbc = Provider.of<DBController>(context);
    await dbc.addVehicle(
      VehicleCompanion(
        id: Value(vehicle.id),
        manufacturer: Value(vehicle.manufacturer),
        model: Value(vehicle.model),
        odometer: Value(vehicle.odometer),
        buildDate: Value(vehicle.buildDate),
      ),
    );
    notifyListeners();
  }
}
