import 'package:drivebook/models/supabase_handler.dart';
import 'package:drivebook/models/vehicle.dart';
import 'package:drivebook/providers/vehicle_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  Session? _sess;

  final sctr = SupabaseController();

  MyHomePage({Key? key, required this.title}) : super(key: key) {
    sctr.getSession().then((value) => {_sess = value});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<User>(
          builder: (context, value, child) {
            if (value != null) {
              return Text(value.email as String);
            } else {
              return const Text('Name is null');
            }
          },
        ),
      ),
      body: ListView.builder(
        // itemCount: vehicleProv.getVehicles.length,
        itemCount: null,
        itemBuilder: ((context, index) {
          // Vehicle vehicle = vehicleProv.getVehicles[index];
          // return ListTile(
          //   title: Text(vehicle.strManufacturer),
          //   subtitle: Text(vehicle.strModel),
          //   leading: CircleAvatar(
          //     backgroundImage: NetworkImage(vehicle.strImageUrl),
          //   ),
          // );
          return Text("");
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          // Provider.of<VehicleProvider>(context, listen: false).addVehicle(
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
