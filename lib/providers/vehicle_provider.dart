import 'package:drivebook/models/vehicle.dart';
import 'package:flutter/material.dart';

class VehicleProvider extends ChangeNotifier {
  final List<Vehicle> _vehicles = [];

  List<Vehicle> get getVehicles => _vehicles;

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

  // void loadVehicles(Client client) {
  //   Database db = Database(client);
  //   List<Vehicle> vehicles = [];

  //   db
  //       .listDocuments(
  //         collectionId: AppwriteClient.vehicleTableId,
  //       )
  //       .then(
  //         (value) => () {
  //           for (Document doc in value.documents) {
  //             vehicles.add(
  //               Vehicle(
  //                 iId: doc.data['\$id'],
  //                 strManufacturer: doc.data['Make'],
  //                 strModel: doc.data['Model'],
  //                 strImageUrl: '',
  //               ),
  //             );
  //           }
  //         },
  //       );

  //   notifyListeners();
  // }

  // void addVehicle(Vehicle vehicle) {
  //   _vehicles.add(vehicle);
  //   notifyListeners();
  // }
}
