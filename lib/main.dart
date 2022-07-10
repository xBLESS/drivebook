import 'package:drivebook/providers/appwrite.dart';
import 'package:drivebook/providers/log_provider.dart';
import 'package:drivebook/providers/vehicles_provider.dart';
import 'package:drivebook/screens/loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/homescreen/homescreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AppwriteClient>(
          create: (context) => AppwriteClient(),
        ),
        // Tip Value Constructor for Provider which do not need the Buildcontext
        // ChangeNotifierProvider<VehicleProvider>.value(
        //   value: VehicleProvider(),
        // ),
        ChangeNotifierProvider<VehiclesProvider>(
          create: (context) => VehiclesProvider(),
        ),
        ChangeNotifierProvider<LogProvider>(
          create: (context) => LogProvider(),
        ),
        // ChangeNotifierProvider.value(value: VehicleProvider()),
        // ChangeNotifierProvider.value(value: LogProvider()),
        // ChangeNotifierProvider.value(value: AppwriteClient()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: LoginScreen.routename,
      routes: {
        MyHomePage.routename: (context) => const MyHomePage(title: 'Title'),
        LoginScreen.routename: (context) => LoginScreen(),
      },
    );
  }
}
