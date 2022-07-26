import 'package:drivebook/screens/vehicledetailscreen.dart/vehicledetailscreen.dart';

import 'providers/logs_provider.dart';
import 'providers/vehicles_provider.dart';
import 'screens/homescreen/vehiclelistscreen.dart';
import 'screens/loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<VehiclesProvider>.value(
          value: VehiclesProvider(),
        ),
        ChangeNotifierProvider<LogsProvider>(
          create: (context) => LogsProvider(),
        ),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
