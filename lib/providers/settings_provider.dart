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

  Future<List<SettingData>> loadSettings() async {
    // DBController dbc = Provider.of<DBController>(context, listen: false);
    _settings = await dbc.getAllSettings;
    notifyListeners();
    return _settings;
  }

  Future<int> updateSetting(SettingCompanion entry, String value) async {
    // DBController dbc = Provider.of<DBController>(context, listen: false);
    var res = await dbc.updateSetting(entry, value);
    return res;
  }
}
