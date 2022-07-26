import 'package:drivebook/screens/vehicledetailscreen.dart/vehicledetailscreen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'package:drivebook/models/vehicle.dart';

class VehicleListItem extends StatelessWidget {
  VehicleListItem({Key? key}) : super(key: key);

  final DBController db = DBController();

  @override
  Widget build(BuildContext context) {
    Vehicle vehicle = Vehicle();
    final DateFormat formatter = DateFormat('yy');
    final NumberFormat odometerFormatter = NumberFormat.decimalPattern();

    return GestureDetector(
      onTap: () =>
          Navigator.popAndPushNamed(context, VehicleDetailScreen.routename),
      child: Card(
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
                Text(
                    // '${vehicle.manufacturer} ${vehicle.model} \'${formatter.format(vehicle.buildDate)}'),
                    '${vehicle.manufacturer} ${vehicle.model}'),
                // Text(vehicle.strManufacturer),
                // Text(vehicle.strModel),
                const Text('Benzin'),
                Text(odometerFormatter.format(vehicle.odometer)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
