import '../../providers/vehicle.dart';
import '../../providers/vehicles_provider.dart';
import 'widgets/vehiclelist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VehicleListScreen extends StatelessWidget {
  static const routename = '/vehicleListScreen';
  const VehicleListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('vehicleListScreen build ran');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: VehicleList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          // Provider.of<VehiclesProvider>(context, listen: false).addVehicle(
          //   Vehicle(
          //     iId: '2',
          //     strManufacturer: 'BMW',
          //     strModel: 'E39',
          //     strImageUrl:
          //         'https://upload.wikimedia.org/wikipedia/commons/4/4f/BMW_E39_front_20081125.jpg',
          //   ),
          // )
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
