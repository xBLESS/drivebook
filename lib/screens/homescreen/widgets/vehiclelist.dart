import 'package:drivebook/providers/vehicle.dart';
import 'package:drivebook/providers/appwrite.dart';
import 'package:drivebook/providers/vehicles_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'vehiclelistitem.dart';

class VehicleList extends StatelessWidget {
  VehicleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appwriteClient = Provider.of<AppwriteClient>(context);
    if (appwriteClient.getLoggedInUser == null) {
      return const Center(child: CircularProgressIndicator());
    }

    final vehicleData = Provider.of<VehiclesProvider>(context);
    vehicleData
        .loadVehicles(appwriteClient.getAppwriteClient)
        .then((value) => null);
    final vehicles = vehicleData.getVehicles;

    print('VehicleList build ran');

    return ListView.builder(
      itemCount: vehicles.length,
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: vehicles[index],
        child: VehicleListItem(),
      ),
    );
  }
}
