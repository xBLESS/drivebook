import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:drivebook/providers/vehicle.dart';
import 'package:drivebook/providers/appwrite.dart';
import 'package:flutter/material.dart';

class VehiclesProvider extends ChangeNotifier {
  List<Vehicle> _vehicles = [];

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

  Future loadVehicles(Client client) async {
    Database db = Database(client);
    List<Vehicle> vehicles = [];
    DocumentList docList = await db.listDocuments(
      collectionId: AppwriteClient.vehicleTableId,
    );

    for (var doc in docList.documents) {
      vehicles.add(
        Vehicle.fromMap(doc.data),
        //   Vehicle(
        //       iId: doc.data['\$id'],
        //       strManufacturer: doc.data['Make'],
        //       strModel: doc.data['Model'],
        //       strImageUrl: ''),
      );
    }

    _vehicles = vehicles;

    notifyListeners();
    return vehicles;
  }

  void addVehicle(Vehicle vehicle) {
    _vehicles.add(vehicle);
    notifyListeners();
  }
}
