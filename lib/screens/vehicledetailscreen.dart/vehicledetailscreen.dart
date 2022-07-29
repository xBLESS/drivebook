import 'package:drivebook/models/dbcontroller.dart';
import 'package:drivebook/providers/vehicles_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class VehicleDetailScreen extends StatelessWidget {
  static String routename = '/vehicledetailscreen';
  const VehicleDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var vehicleProvider = Provider.of<VehiclesProvider>(context);
    VehicleData vehicle = vehicleProvider.getSelectedVehicle;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                icon: const Icon(Icons.edit_rounded),
                onPressed: () {},
              ),
            ],
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://i.auto-bild.de/mdb/extra_large/44/e30-00d.jpg',
                fit: BoxFit.cover,
              ),
              title: Text('${vehicle.manufacturer} ${vehicle.model}'),
            ),
            pinned: false,
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 3),
            delegate: SliverChildBuilderDelegate(
              ((context, index) {
                return GridTile(
                  child: Text('Test'),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
