import 'dart:math';

import 'package:drivebook/models/dbcontroller.dart';
import 'package:drivebook/providers/vehicles_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class VehicleDetailScreen extends StatelessWidget {
  static String routename = '/vehicledetailscreen';
  const VehicleDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VehiclesProvider vehicleProvider = Provider.of<VehiclesProvider>(context);
    VehicleData vehicle = vehicleProvider.getSelectedVehicle;
    print('detailscreen build ran');

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                icon: const Icon(Icons.edit_rounded),
                onPressed: () {},
              ),
            ],
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://i.auto-bild.de/mdb/extra_large/44/e30-00d.jpg',
                fit: BoxFit.cover,
              ),
              title: Text('${vehicle.manufacturer} ${vehicle.model}'),
            ),
            pinned: false,
            // bottom: TabBar(
            //   tabs: [IconButton(onPressed: () {}, icon: Icon(Icons.car_crash_outlined))],
            // ),
          ),
          // SliverGrid.count(
          //   crossAxisCount: 3,
          //   children: const [
          //     Card(),
          //     Card(),
          //     Card(),
          //     Card(),
          //   ],
          // ),
          SliverToBoxAdapter(
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: const [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Card(child: Text('Index 0')),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Card(child: Text('Index 1')),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(child: Text('Index 2')),
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
                  crossAxisCellCount: 4,
                  mainAxisCellCount: 1,
                  child: Card(child: Text('Index 2')),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 2,
                  child: Card(child: Text('Index 4')),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 4,
                  mainAxisCellCount: 1,
                  child: Card(child: Text('Index 2')),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 2,
                  child: Card(child: Text('Index 4')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
