import 'package:drift/drift.dart';
import 'package:drivebook/models/dbcontroller.dart';
import 'package:drivebook/providers/vehicles_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/vehiclelistitem.dart';

class VehicleListScreen extends StatelessWidget {
  static const routename = '/vehicleListScreen';

  const VehicleListScreen({Key? key}) : super(key: key);

  void _fabAction(BuildContext context) {
    Provider.of<DBController>(context, listen: false).addVehicle(
      const VehicleCompanion(
        // id: Value(2),
        manufacturer: Value('BMW'),
        model: Value('E36'),
        odometer: Value(123456),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('vehicleListScreen build ran');
    var vehicleProvider = Provider.of<VehiclesProvider>(context);
    vehicleProvider.loadVehicles();

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
