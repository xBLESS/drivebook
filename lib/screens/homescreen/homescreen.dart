import 'package:drivebook/models/vehicle.dart';
import 'package:drivebook/providers/vehicle_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder(
        future: Provider.of<VehicleProvider>(context).getVehicles(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: ((context, index) {
                Vehicle vehicle = snapshot.data[index] as Vehicle;
                return ListTile(
                  title: Text(vehicle.strManufacturer),
                  subtitle: Text(vehicle.strModel),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(vehicle.strImageUrl),
                  ),
                );
              }),
            );
          } else {
            return const Text("Some error");
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Provider.of<VehicleProvider>(context, listen: false).addVehicle(
            Vehicle(
              2,
              'BMW',
              'E39',
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
