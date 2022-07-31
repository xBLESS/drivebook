import 'package:drift/drift.dart';
import 'package:drivebook/models/dbcontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VehiclesProvider extends ChangeNotifier {
  final BuildContext context;

  List<VehicleData> _vehicles = [];
  int _selectedId = 0;

  VehiclesProvider(this.context);

  List<VehicleData> get getAllVehicles => _vehicles;
  VehicleData get getSelectedVehicle {
    return _vehicles[_selectedId];
  }

  int setSelectedVehicleIndex(int index) {
    _selectedId = index;
    notifyListeners();
    return _selectedId;
  }

  int setSelectedIndex(VehicleData vehicle) {
    _selectedId = _vehicles.indexWhere((element) => element == vehicle);
    notifyListeners();
    return _selectedId;
  }

  Future<List<VehicleData>> loadVehicles() async {
    DBController dbc = Provider.of<DBController>(context, listen: false);
    _vehicles = await dbc.getAllVehicles;
    notifyListeners();
    return _vehicles;
  }

  // void get getVehiclesVoid async {
  //   // _isLoading = true;
  //   await dbc.getAllVehicles;
  //   notifyListeners();
  // }

  void addVehicle(VehicleCompanion vehicle) async {
    await Provider.of<DBController>(context, listen: false).addVehicle(
      VehicleCompanion(
        id: vehicle.id,
        manufacturer: vehicle.manufacturer,
        model: vehicle.model,
        odometer: vehicle.odometer,
        buildDate: vehicle.buildDate,
      ),
    );

    loadVehicles();
    // notifyListeners();
  }
}
