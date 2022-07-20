import 'package:flutter/material.dart';

class VehicleDetailScreen extends StatelessWidget {
  static String routename = '/vehicledetailscreen';
  const VehicleDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Center(
        child: Text('Test'),
      ),
    );
  }
}
