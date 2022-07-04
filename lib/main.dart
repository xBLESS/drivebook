import 'package:drivebook/providers/log_provider.dart';
import 'package:drivebook/providers/vehicle_provider.dart';
import 'package:drivebook/screens/homescreen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/homescreen/homescreen.dart';

void main() async {
  await Future.delayed(const Duration(seconds: 2));
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => VehicleProvider()),
      ChangeNotifierProvider(create: (context) => LogProvider()),
    ],
    child: const MyApp(),
  ));
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
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => LoginScreen(),
        '/myhomepage': (context) => MyHomePage(title: 'Supabase Test'),
      },
    );
  }
}
