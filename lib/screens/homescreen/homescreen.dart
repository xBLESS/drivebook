import 'package:drivebook/models/vehicle.dart';
import 'package:drivebook/providers/appwrite.dart';
import 'package:drivebook/providers/vehicle_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final appwriteProv = Provider.of<AppwriteClient>(context);

    final vehicleProv = Provider.of<VehicleProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder(
          future: appwriteProv.loginUser('tw@appwrite.com', 'password'),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              //User appUser = snapshot.data as User;
              //return Text(appUser.name);
              return Text(appwriteProv.getLoggedInUser.name);
            } else if (snapshot.connectionState == ConnectionState.active) {
              return const Text('Loading');
            } else {
              return const Text("Some error");
            }
          },
          // title: Text(Provider.of<AppwriteClient>(context).getLoggedInUser.name),
        ),
      ),
      body: ListView.builder(
        itemCount: vehicleProv.getVehicles.length,
        itemBuilder: ((context, index) {
          Vehicle vehicle = vehicleProv.getVehicles[index];
          return ListTile(
            title: Text(vehicle.strManufacturer),
            subtitle: Text(vehicle.strModel),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(vehicle.strImageUrl),
            ),
          );
        }),
      ),
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
