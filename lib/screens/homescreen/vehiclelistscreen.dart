import 'package:drift/drift.dart';
import 'package:drivebook/models/vehicle.dart';
import 'package:drivebook/providers/vehicles_provider.dart';
import 'widgets/vehiclelist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VehicleListScreen extends StatelessWidget {
  static const routename = '/vehicleListScreen';
  DBController dbc = DBController();
  VehicleListScreen({Key? key}) : super(key: key);

  void _fabAction() {
    dbc.addTodo(
      const VehicleCompanion(
        id: Value(1),
        manufacturer: Value('BMW'),
        model: Value('E36'),
        odometer: Value(123456),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('vehicleListScreen build ran');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: VehicleList(),
      floatingActionButton: FloatingActionButton(
        onPressed: _fabAction,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
