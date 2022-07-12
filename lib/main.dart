import 'providers/appwrite.dart';
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
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: LoginScreen.routename,
      routes: {
        VehicleListScreen.routename: (context) => const VehicleListScreen(),
        LoginScreen.routename: (context) => LoginScreen(),
      },
    );
  }
}
