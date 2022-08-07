import 'package:drift/drift.dart';
import 'package:drivebook/models/dbcontroller.dart';
import 'package:drivebook/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  static const routename = '/settingsScreen';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Einstellungen'),
      ),
      body: Consumer<SettingsProvider>(
        builder: (context, value, _) {
          var data = value.getSettings;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              switch (data[index].type) {
                case 'bool':
                  return SwitchListTile(
                    title: Text(data[index].name),
                    value: bool.fromEnvironment(data[index].value),
                    onChanged: (value) {
                      Provider.of<SettingsProvider>(context, listen: false)
                          .updateSetting(
                        SettingData(
                          name: data[index].name,
                          type: data[index].type,
                          value: data[index].value,
                        ),
                        value.toString(),
                      );
                    },
                  );
                default:
                  return const ListTile(
                    title: Text('Error'),
                  );
              }
            },
          );
        },
      ),
    );
  }
}
