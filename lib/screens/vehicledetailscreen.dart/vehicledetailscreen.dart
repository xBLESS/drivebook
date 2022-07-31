import 'dart:math';

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
    VehiclesProvider vehicleProvider = Provider.of<VehiclesProvider>(context);
    VehicleData vehicle = vehicleProvider.getSelectedVehicle;
    print('detailscreen build ran');

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
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Card(
                  // generate blues with random shades
                  color: Colors.amber[Random().nextInt(9) * 100],
                  child: Container(
                    alignment: Alignment.center,
                    child: Text('Test'),
                  ),
                );
              },
              childCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
