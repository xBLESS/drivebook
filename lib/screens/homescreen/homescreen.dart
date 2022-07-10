import 'package:drivebook/models/vehicle.dart';
import 'package:drivebook/providers/appwrite.dart';
import 'package:drivebook/providers/vehicle_provider.dart';
import 'package:drivebook/screens/homescreen/widgets/vehiclelist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  static const routename = '/';
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final appwriteProv = Provider.of<AppwriteClient>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(appwriteProv.getLoggedInUser.name),
      ),
      body: const VehicleList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Provider.of<VehicleProvider>(context, listen: false).addVehicle(
            Vehicle(
              iId: '2',
              strManufacturer: 'BMW',
              strModel: 'E39',
              strImageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/4/4f/BMW_E39_front_20081125.jpg',
            ),
          )
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
