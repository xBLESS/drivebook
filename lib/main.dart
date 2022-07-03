import 'package:drivebook/providers/log_provider.dart';
import 'package:drivebook/providers/vehicle_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'screens/homescreen/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<VehicleProvider>(
          create: (_) => VehicleProvider(),
        ),
        ChangeNotifierProvider<LogProvider>(
          create: (_) => LogProvider(),
        ),
        // ChangeNotifierProvider.value(value: VehicleProvider()),
        // ChangeNotifierProvider.value(value: LogProvider()),
        // ChangeNotifierProvider.value(value: AppwriteClient()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
