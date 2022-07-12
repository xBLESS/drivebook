import 'package:drivebook/providers/appwrite.dart';
import 'package:drivebook/providers/logs_provider.dart';
import 'package:drivebook/providers/vehicles_provider.dart';
import 'package:drivebook/screens/loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        ChangeNotifierProvider<AppwriteClient>(
          create: (context) => AppwriteClient(),
        ),
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
        home: LoginScreen(),
        // initialRoute: LoginScreen.routename,
        routes: {
          MyHomePage.routename: (context) => const MyHomePage(),
          LoginScreen.routename: (context) => LoginScreen(),
        },
      ),
    );
  }
}
