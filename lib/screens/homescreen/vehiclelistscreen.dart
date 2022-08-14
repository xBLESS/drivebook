import 'package:drift/drift.dart' as drift;
import 'package:drivebook/models/dbcontroller.dart';
import 'package:drivebook/providers/vehicles_provider.dart';
import 'package:drivebook/screens/add_vehicle_screen/add_vehicle_screen.dart';
import 'package:drivebook/screens/settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/vehiclelistitem.dart';

class VehicleListScreen extends StatelessWidget {
  static const routename = '/vehicleListScreen';
  bool loadData = true;

  VehicleListScreen({Key? key}) : super(key: key);

  void _fabAction(BuildContext context) {
    // Provider.of<VehiclesProvider>(context, listen: false).addVehicle(
    //   VehicleCompanion(
    //     // id: Value(2),
    //     manufacturer: drift.Value('BMW'),
    //     model: drift.Value('320i'),
    //     generation: drift.Value('E30'),
    //     mileage: drift.Value(123456),
    //     buildDate: drift.Value(DateTime(1987, 1, 1, 1, 1)),
    //     licensePlate: drift.Value('VIE TW 69'),
    //     // Fuel
    //     primaryFuelCapacity: drift.Value(50.0),
    //     primaryFuelTypeId: drift.Value(1),
    //     currency: drift.Value('€'),
    //     mileageUnit: drift.Value('km'),
    //     primaryConsumptionUnit: drift.Value('l/100km'),

    //     secondaryFuelCapacity: drift.Value(60.0),
    //     secondaryFuelTypeId: drift.Value(3),
    //     // Buy
    //     buyDateTime: drift.Value(DateTime(2021, 1, 2, 0, 0, 0)),
    //     buyMileage: drift.Value(70500),
    //     buyPrice: drift.Value(0),
    //   ),
    // );
    Navigator.popAndPushNamed(context, AddVehicleScreen.routename);
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
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.popAndPushNamed(context, SettingsScreen.routename);
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _fabAction(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
