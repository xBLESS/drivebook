import 'package:drivebook/models/dbcontroller.dart';
import 'package:drivebook/models/enums.dart';
import 'package:drivebook/providers/fuel_type_provider.dart';
import 'package:drivebook/screens/add_vehicle_screen/widgets/bi_fuel_tank.dart';
import 'package:drivebook/screens/homescreen/vehiclelistscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddVehicleScreen extends StatefulWidget {
  static const String routename = '/add_vehicle_screen';
  AddVehicleScreen({Key? key}) : super(key: key);

  @override
  State<AddVehicleScreen> createState() => _AddVehicleScreenState();
}

class _AddVehicleScreenState extends State<AddVehicleScreen> {
  final EdgeInsets tecEdgeInsets = const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0);

  bool isBifuel = false;

  final List<String> months = [
    'Januar',
    'Februar',
    'März',
    'April',
    'Mai',
    'Juni',
    'Juli',
    'August',
    'September',
    'Oktober',
    'November',
    'Dezember',
  ];

  late List<FuelTypeData> _fuels;

  // final OutlineInputBorder tecBorder = const OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid));

  final TextEditingController make = TextEditingController();
  final TextEditingController generation = TextEditingController();
  final TextEditingController modell = TextEditingController();
  final TextEditingController license = TextEditingController();
  final TextEditingController notes = TextEditingController();
  final TextEditingController licenseStartDate = TextEditingController();
  final TextEditingController licenseEndDate = TextEditingController();

  RangeValues seasonLicenseRangeValues = const RangeValues(1.0, 12.0);

  @override
  void initState() {
    super.initState();
  }

  void _onSaveAction(BuildContext context) {
    // Verify textEditingControllers

    Navigator.popAndPushNamed(context, VehicleListScreen.routename);
  }

  static Route<Object?> _dialogDateTime(BuildContext context, Object? arguments) {
    return DialogRoute<Object?>(
      context: context,
      builder: (BuildContext context) => DatePickerDialog(
        initialDate: DateTime.now(),
        firstDate: DateTime(69),
        lastDate: DateTime(9999),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const EdgeInsets tecEdgeInsets = EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0);
    const OutlineInputBorder tecBorder = OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid));
    _fuels = Provider.of<FuelTypeProvider>(context).getFuelType;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Neues Fahrzeug'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home_rounded),
            onPressed: () {
              Navigator.popAndPushNamed(context, VehicleListScreen.routename);
            },
          ),
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () => _onSaveAction,
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: make,
                  decoration: const InputDecoration(
                    label: Text('Hersteller'),
                    border: tecBorder,
                  ),
                ),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: generation,
                  decoration: const InputDecoration(
                    label: Text('Generation'),
                    border: tecBorder,
                  ),
                ),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: modell,
                  decoration: const InputDecoration(
                    label: Text('Modell'),
                    border: tecBorder,
                  ),
                ),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: license,
                  decoration: const InputDecoration(
                    label: Text('Kennzeichen'),
                    border: tecBorder,
                  ),
                ),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: Column(
                  children: [
                    seasonLicenseRangeValues.start == 1.0 && seasonLicenseRangeValues.end == 12.0
                        ? const Text('Ganzjählich')
                        : Text('${months[seasonLicenseRangeValues.start.toInt() - 1]} bis ${months[seasonLicenseRangeValues.end.toInt() - 1]}'),
                    RangeSlider(
                      min: 1.0,
                      max: 12.0,
                      divisions: 11,
                      values: seasonLicenseRangeValues,
                      onChanged: (values) {
                        setState(() {
                          seasonLicenseRangeValues = values;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: notes,
                  decoration: const InputDecoration(
                    label: Text('Notizen'),
                    border: tecBorder,
                  ),
                ),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextFormField(
                  showCursor: true,
                  readOnly: true,
                  onTap: () {
                    Navigator.of(context).restorablePush(_dialogDateTime);
                  },
                  decoration: const InputDecoration(
                    label: Text('Hergestellt am'),
                    border: tecBorder,
                  ),
                ),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: notes,
                  decoration: const InputDecoration(
                    label: Text('Notizen'),
                    border: tecBorder,
                  ),
                ),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: notes,
                  decoration: const InputDecoration(
                    label: Text('Notizen'),
                    border: tecBorder,
                  ),
                ),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: notes,
                  decoration: const InputDecoration(
                    label: Text('Notizen'),
                    border: tecBorder,
                  ),
                ),
              ),
              SwitchListTile(
                value: isBifuel,
                title: const Text('Auto ist Bi-fuel'),
                subtitle: const Text('Fahrzeug hat zwei Treibstofftanks'),
                onChanged: (value) {
                  setState(() {
                    isBifuel = value;
                  });
                },
              ),
              isBifuel
                  ? BiFuelTanks(
                      tecOne: license,
                      tecTwo: license,
                    )
                  : Column(
                      children: [
                        Padding(
                          padding: tecEdgeInsets,
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              label: Text('Treibstoff'),
                              border: tecBorder,
                            ),
                            items: _fuels
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e.fuel,
                                    child: Text(e.fuel),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {},
                          ),
                        ),
                        Padding(
                          padding: tecEdgeInsets,
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              label: Text('Kraftstoffeinheit'),
                              border: tecBorder,
                            ),
                            items: FuelUni.values
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e.name,
                                    child: Text(e.name),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {},
                          ),
                        ),
                        Padding(
                          padding: tecEdgeInsets,
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              label: Text('Verbrauchseinheit'),
                              border: tecBorder,
                            ),
                            items: ConsumptionUnit.values
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e.name,
                                    child: Text(e.name),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: notes,
                  decoration: const InputDecoration(
                    label: Text('Kapazität'),
                    border: tecBorder,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
