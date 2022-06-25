import 'package:drivebook/models/vehicle.dart';
import 'package:flutter/material.dart';

class VehicleProvider extends ChangeNotifier {
  final List<Vehicle> _vehicles = [];

  Future<List<Vehicle>> getTestVehicles() async {
    return [
      Vehicle(
        1,
        'BMW',
        'E30',
        'https://i.auto-bild.de/mdb/extra_large/44/e30-00d.jpg',
      ),
    ];
  }

  void addVehicle(Vehicle vehicle) {
    _vehicles.add(vehicle);
    notifyListeners();
  }
}
