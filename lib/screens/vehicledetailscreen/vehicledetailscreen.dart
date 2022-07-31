import 'dart:math';

import 'package:drivebook/models/dbcontroller.dart';
import 'package:drivebook/providers/vehicles_provider.dart';
import 'package:drivebook/screens/vehicledetailscreen/widget/tire_overview_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class VehicleDetailScreen extends StatelessWidget {
  static String routename = '/vehicledetailscreen';

  final NumberFormat odometerFormatter = NumberFormat.decimalPattern();

  VehicleDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VehiclesProvider vehicleProvider = Provider.of<VehiclesProvider>(context);
    VehicleData vehicle = vehicleProvider.getSelectedVehicle;

    ThemeData currentTheme = Theme.of(context);

    print('detailscreen build ran');

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_rounded),
            onPressed: () {},
          ),
        ],
        title: Text('${vehicle.manufacturer} ${vehicle.model}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 4,
                  mainAxisCellCount: 2,
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      'https://i.auto-bild.de/mdb/extra_large/44/e30-00d.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text('Tachostand',
                              style: currentTheme.textTheme.titleSmall),
                          Text(odometerFormatter.format(vehicle.odometer),
                              style: currentTheme.textTheme.titleMedium),
                          const Spacer(),
                          Text('Fahrleistung',
                              style: currentTheme.textTheme.titleSmall),
                          Text(odometerFormatter.format(vehicle.odometer),
                              style: currentTheme.textTheme.titleMedium),
                        ],
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Vehicle ID',
                            style: currentTheme.textTheme.titleMedium),
                        Text('${vehicle.id}'),
                      ],
                    ),
                  )),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(child: Text('Index 3')),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 4,
                  mainAxisCellCount: 2,
                  child: Card(child: Text('Index 4')),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: TireOverViewCard(),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 2,
                  child: Card(child: Text('Index 6')),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 4,
                  mainAxisCellCount: 1,
                  child: Card(child: Text('Index 7')),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 2,
                  child: Card(child: Text('Index 8')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
