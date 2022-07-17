import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/vehicle.dart';

class VehicleListItem extends StatelessWidget {
  VehicleListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Vehicle vehicle = Provider.of<Vehicle>(context);
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              // TODO Bild darf bestimmte breite nicht überschreiten
              height: 100,
              child: Image.network(
                'https://i.auto-bild.de/mdb/extra_large/44/e30-00d.jpg',
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${vehicle.strManufacturer} ${vehicle.strModel}'),
              // Text(vehicle.strManufacturer),
              // Text(vehicle.strModel),
              const Text('Benzin'),
              const Text('243269 km'),
            ],
          ),
        ],
      ),
    );
  }
}
