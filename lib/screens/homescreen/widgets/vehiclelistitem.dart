import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/vehicle.dart';

class VehicleListItem extends StatelessWidget {
  VehicleListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Vehicle vehicle = Provider.of<Vehicle>(context);
    return ListTile(
      title: Text(vehicle.strManufacturer),
      subtitle: Text(vehicle.strModel),
    );
  }
}
