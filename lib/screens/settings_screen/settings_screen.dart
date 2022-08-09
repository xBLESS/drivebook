import 'package:drift/drift.dart';
import 'package:drivebook/models/dbcontroller.dart';
import 'package:drivebook/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:drivebook/extensions/extensions.dart';

class SettingsScreen extends StatelessWidget {
  static const routename = '/settingsScreen';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print('settingsscreen build ran');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Einstellungen'),
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
                    value: data[index].value.parseBool(),
                    onChanged: (value) {
                      Provider.of<SettingsProvider>(context, listen: false).updateSetting(data[index], value.toString());
                    },
                  );
                case 'integer':
                  return RadioListTile(
                    title: Text(data[index].name),
                    value: 'value',
                    groupValue: 0,
                    onChanged: (val) {},
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
