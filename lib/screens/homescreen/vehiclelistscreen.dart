import 'package:drift/drift.dart';
import 'package:drivebook/models/dbcontroller.dart';
import 'package:drivebook/providers/vehicles_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/vehiclelistitem.dart';

class VehicleListScreen extends StatelessWidget {
  static const routename = '/vehicleListScreen';
  bool loadData = true;

  VehicleListScreen({Key? key}) : super(key: key);

  void _fabAction(BuildContext context) {
    Provider.of<VehiclesProvider>(context, listen: false).addVehicle(
      VehicleCompanion(
        // id: Value(2),
        manufacturer: Value('BMW'),
        model: Value('320i'),
        generation: Value('E30'),
        mileage: Value(123456),
        buildDate: Value(DateTime(1987, 1, 1, 1, 1)),
        licensePlate: Value('VIE TW 69'),
        // Fuel
        primaryFuelCapacity: Value(50),
        primaryFuelTypeId: Value(0),
        // Buy
        buyDateTime: Value(DateTime(2021, 1, 2, 0, 0, 0)),
        buyMileage: Value(70500),
        buyPrice: Value(0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('vehicleListScreen build ran');
    var vehicleProvider = Provider.of<VehiclesProvider>(context);
    vehicleProvider.getAllVehicles;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: ListView.builder(
        itemCount: vehicleProvider.getAllVehicles.length,
        itemBuilder: (context, index) {
          VehicleData vehicle = vehicleProvider.getAllVehicles[index];
          return VehicleListItem(
            vehicle: vehicle,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _fabAction(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
