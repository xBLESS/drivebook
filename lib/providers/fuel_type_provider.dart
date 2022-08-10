import 'package:drift/drift.dart';
import 'package:drivebook/models/dbcontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FuelTypeProvider extends ChangeNotifier {
  final BuildContext context;
  List<FuelTypeData> _fuelTypes = [];

  FuelTypeProvider(this.context);

  Future<List<FuelTypeData>> loadData() async {
    DBController dbc = Provider.of<DBController>(context, listen: false);
    _fuelTypes = await dbc.getAllFuelTypes;
    notifyListeners();
    return _fuelTypes;
  }

  List<FuelTypeData> get getFuelType => _fuelTypes;

  String getFuelTypeById(int id) => _fuelTypes.where((element) => element.id == id).single.fuel;

  Future<int> addFuel(String data) async {
    DBController dbc = Provider.of<DBController>(context, listen: false);
    int res = await dbc.addFuelType(FuelTypeCompanion(fuel: Value(data)));
    await loadData();
    return res;
  }
}
