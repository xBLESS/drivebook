import 'package:drift/drift.dart';
import 'package:drivebook/models/dbcontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsProvider extends ChangeNotifier {
  List<SettingData> _settings = [];
  BuildContext context;
  late DBController dbc;

  SettingsProvider(this.context) {
    dbc = Provider.of<DBController>(context, listen: false);
  }

  List<SettingData> get getSettings => _settings;

  Future addSetting(SettingData entry) async {
    int res = await dbc.addSetting(
      SettingCompanion(
        name: Value(entry.name),
        type: Value(entry.type),
        value: Value(entry.value),
      ),
    );
    if (res <= 0) {
      print('Setting ID was ${res}');
    }
    _settings.add(entry);
    notifyListeners();
  }

  Future<List<SettingData>> loadSettings() async {
    // DBController dbc = Provider.of<DBController>(context, listen: false);
    _settings = await dbc.getAllSettings;
    notifyListeners();
    return _settings;
  }

  Future<int> updateSetting(SettingData entry, String value) async {
    // DBController dbc = Provider.of<DBController>(context, listen: false);
    print('${entry.name}, ${entry.value}');
    var res = await dbc.updateSetting(entry, value);
    loadSettings();
    print('${entry.name}, ${entry.value}');
    // notifyListeners();
    return 1;
  }
}
