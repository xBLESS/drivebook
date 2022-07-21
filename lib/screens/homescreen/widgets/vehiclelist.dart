import 'package:drivebook/providers/vehicle.dart';
import 'package:drivebook/providers/vehicles_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'vehiclelistitem.dart';

class VehicleList extends StatelessWidget {
  VehicleList({Key? key}) : super(key: key);
  List<Vehicle> _vehicles = [];

  @override
  Widget build(BuildContext context) {
    final vehicleData = Provider.of<VehiclesProvider>(context);
    // vehicleData
    //     .loadVehicles(appwriteClient.getAppwriteClient)
    //     .then((value) => null);
    // vehicleData.getTestVehicles().then((value) => vehicles = value);
    _vehicles = vehicleData.getVehicles;

    // print('VehicleList build ran');

    return ListView.builder(
      itemCount: _vehicles.length,
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: _vehicles[index],
        child: VehicleListItem(),
      ),
    );
  }
}
