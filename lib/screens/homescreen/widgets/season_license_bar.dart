import 'package:flutter/material.dart';
import 'package:drivebook/extensions/extensions.dart';

class SeasonLicenseBar extends StatelessWidget {
  final int seasonalLicenseBeginMonth;
  final int seasonalLicenseEndMonth;

  const SeasonLicenseBar(this.seasonalLicenseBeginMonth, this.seasonalLicenseEndMonth, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentDateMonth = DateTime.now().month;

    List<Widget> buildSeasonBar() {
      List<Widget> widgets = [];

      for (var month = 1; month <= 12; month++) {
        if (month >= seasonalLicenseBeginMonth && month <= seasonalLicenseEndMonth) {
          widgets.add(
            Container(
              width: 12,
              height: 7,
              // child: Center(child: Text(months[i], style: TextStyle(fontSize: 7))),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(2)),
                color: month == currentDateMonth ? Theme.of(context).primaryColorLight : Theme.of(context).primaryColor,
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
                color: month == currentDateMonth ? Theme.of(context).errorColor.lightenColor() : Theme.of(context).errorColor,
              ),
            ),
          );
        }
      }

      // print('begin: $seasonalLicenseBeginMonth, end $seasonalLicenseEndMonth');

      return widgets;
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: buildSeasonBar(),
        ),
      ),
    );
  }
}
