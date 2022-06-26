import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:drivebook/models/vehicle.dart';
import 'package:drivebook/providers/appwrite.dart';
import 'package:flutter/material.dart';

class VehicleProvider extends ChangeNotifier {
  final List<Vehicle> _vehicles = [];

  Future<List<Vehicle>> getTestVehicles() async {
    return [
      Vehicle(
        iId: '1',
        strManufacturer: 'BMW',
        strModel: 'E30',
        strImageUrl: 'https://i.auto-bild.de/mdb/extra_large/44/e30-00d.jpg',
      ),
    ];
  }

  Future<List<Vehicle>> getVehicles(Client client) async {
    Database db = Database(client);
    List<Vehicle> vehicles = [];

    DocumentList result = await db.listDocuments(
      collectionId: AppwriteClient.vehicleTableId,
    );

    for (Document doc in result.documents) {
      vehicles.add(
        Vehicle(
          iId: doc.data['\$id'],
          strManufacturer: doc.data['Make'],
          strModel: doc.data['Model'],
          strImageUrl: '',
        ),
      );
    }

    return vehicles;
  }

  void addVehicle(Vehicle vehicle) {
    _vehicles.add(vehicle);
    notifyListeners();
  }
}
