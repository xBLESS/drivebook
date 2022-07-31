import 'package:drivebook/models/dbcontroller.dart';
import 'package:drivebook/screens/vehicledetailscreen/vehicledetailscreen.dart';
import 'package:path/path.dart';

import 'providers/logs_provider.dart';
import 'providers/vehicles_provider.dart';
import 'screens/homescreen/vehiclelistscreen.dart';
import 'screens/loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<DBController>(
          create: (context) => DBController(),
          dispose: (context, db) => db.close(),
        ),
        ChangeNotifierProvider<VehiclesProvider>(
          create: (context) => VehiclesProvider(context),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Load initial data
    Provider.of<VehiclesProvider>(context, listen: false).loadVehicles();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: VehicleListScreen(),
      routes: {
        VehicleListScreen.routename: (context) => VehicleListScreen(),
        LoginScreen.routename: (context) => LoginScreen(),
        VehicleDetailScreen.routename: (context) => VehicleDetailScreen(),
      },
    );
  }
}
