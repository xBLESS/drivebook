import 'package:drivebook/models/vehicle.dart';
import 'package:flutter/material.dart';

class VehicleProvider extends ChangeNotifier {
  final List<Vehicle> _vehicles = [];

  List<Vehicle> get getVehicles => _vehicles;

  // Future<List<Vehicle>> getTestVehicles() async {
  //   return [
  //     Vehicle(
  //       iId: '1',
  //       strManufacturer: 'BMW',
  //       strModel: 'E30',
  //       strImageUrl: 'https://i.auto-bild.de/mdb/extra_large/44/e30-00d.jpg',
  //     ),
  //   ];
  // }

}
