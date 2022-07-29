import 'package:drivebook/models/dbcontroller.dart';
import 'package:drivebook/providers/vehicles_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VehicleDetailScreen extends StatelessWidget {
  static String routename = '/vehicledetailscreen';
  const VehicleDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var vehicleProvider = Provider.of<VehiclesProvider>(context);
    VehicleData vehicle = vehicleProvider.getSelectedVehicle;

    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Center(
        child: Text('Test'),
      ),
    );
  }
}
