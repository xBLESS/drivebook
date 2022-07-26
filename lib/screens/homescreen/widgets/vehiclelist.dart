import 'package:drivebook/models/vehicle.dart';
import 'package:drivebook/providers/vehicles_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'vehiclelistitem.dart';

class VehicleList extends StatelessWidget {
  DBController dbc = DBController();
  VehicleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vehicleData = Provider.of<VehiclesProvider>(context);
    // vehicleData
    //     .loadVehicles(appwriteClient.getAppwriteClient)
    //     .then((value) => null);
    // vehicleData.getTestVehicles().then((value) => vehicles = value);

    // print('VehicleList build ran');

    return FutureBuilder(
      future: dbc.getAllVehicles,
      builder: (context, AsyncSnapshot<List<VehicleData>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) => VehicleListItem(),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
