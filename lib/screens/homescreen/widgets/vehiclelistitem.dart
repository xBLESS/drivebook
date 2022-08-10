import 'dart:ui';

import 'package:drivebook/providers/vehicles_provider.dart';
import 'package:drivebook/screens/vehicledetailscreen/vehicledetailscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'package:drivebook/models/dbcontroller.dart';

class VehicleListItem extends StatelessWidget {
  VehicleListItem({Key? key, required this.vehicle}) : super(key: key);

  final VehicleData vehicle;

  @override
  Widget build(BuildContext context) {
    // VehicleData vehicle = vehicleProvider.getSelectedVehicle;

    final DateFormat formatter = DateFormat('yy');
    final NumberFormat odometerFormatter = NumberFormat.decimalPattern();

    return GestureDetector(
      onTap: () {
        Provider.of<VehiclesProvider>(context, listen: false).setSelectedIndex(vehicle);
        Navigator.pushNamed(context, VehicleDetailScreen.routename);
      },
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // TODO Bild darf bestimmte breite nicht überschreiten
              height: 100,
              width: (100 / 9) * 16,
              child: Image.network(
                'https://i.auto-bild.de/mdb/extra_large/44/e30-00d.jpg',
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // color: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      vehicle.buildDate != null
                          ? Text('${vehicle.manufacturer} ${vehicle.generation ?? ' '}${vehicle.generation != null ? ' ' : ''}${vehicle.model} \'${formatter.format(vehicle.buildDate!)}')
                          : Text('${vehicle.manufacturer} ${vehicle.generation} ${vehicle.model}'),
                      Text('Benzin'),
                      Text(odometerFormatter.format(vehicle.mileage)),
                      // Center(
                      //   child: SliderTheme(
                      //     data: const SliderThemeData(
                      //       overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
                      //       trackHeight: 6.0,
                      //       showValueIndicator: ShowValueIndicator.always,
                      //       rangeThumbShape: RoundRangeSliderThumbShape(disabledThumbRadius: 0.0, enabledThumbRadius: 0.1, elevation: 0.0, pressedElevation: 0.0),
                      //       rangeTrackShape: RoundedRectRangeSliderTrackShape(),
                      //       rangeTickMarkShape: RoundRangeSliderTickMarkShape(),
                      //     ),
                      //     child: RangeSlider(
                      //       values: RangeValues(vehicle.seasonalLicenseBeginMonth.toDouble(), vehicle.seasonalLicenseEndMonth.toDouble()),
                      //       min: 1.0,
                      //       max: 12.0,
                      //       divisions: 11,
                      //       semanticFormatterCallback: (value) => '${value}',
                      //       onChanged: (value) {},
                      //     ),
                      //   ),
                      // ),
                      SeasonLicenseBar(vehicle.seasonalLicenseBeginMonth, vehicle.seasonalLicenseEndMonth),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeasonLicenseBar extends StatelessWidget {
  int seasonalLicenseBeginMonth;
  final int seasonalLicenseEndMonth;

  SeasonLicenseBar(this.seasonalLicenseBeginMonth, this.seasonalLicenseEndMonth, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> months = [
      'J',
      'F',
      'M',
      'A',
      'M',
      'J',
      'J',
      'A',
      'S',
      'O',
      'N',
      'D',
    ];

    List<Widget> buildSeasonBar() {
      List<Widget> widgets = [];
      seasonalLicenseBeginMonth = 3;
      for (var i = 0; i < months.length; i++) {
        if (i + 1 >= seasonalLicenseBeginMonth && i + 1 <= seasonalLicenseEndMonth) {
          widgets.add(
            Container(
              width: 12,
              height: 7,
              // child: Center(child: Text(months[i], style: TextStyle(fontSize: 7))),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(2)),
                color: Theme.of(context).primaryColor,
              ),
            ),
          );
        } else {
          widgets.add(
            Container(
              width: 12,
              height: 7,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(2)),
                color: Theme.of(context).errorColor,
              ),
            ),
          );
        }
      }

      print('begin: $seasonalLicenseBeginMonth, end $seasonalLicenseEndMonth');

      return widgets;
    }

    return Center(
      child: Container(
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: buildSeasonBar(),
        ),
      ),
    );
  }
}
