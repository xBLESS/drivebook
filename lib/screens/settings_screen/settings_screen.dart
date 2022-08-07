import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const routename = '/settingsScreen';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Einstellungen'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Container();
          },
        ));
  }
}
