import 'package:drift/drift.dart' as drift;
import 'package:drivebook/models/dbcontroller.dart';
import 'package:drivebook/models/enums.dart';
import 'package:drivebook/providers/fuel_type_provider.dart';
import 'package:drivebook/providers/vehicle_provider.dart';
import 'package:drivebook/providers/vehicles_provider.dart';
import 'package:drivebook/screens/add_vehicle_screen/widgets/bi_fuel_tank.dart';
import 'package:drivebook/screens/homescreen/vehiclelistscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  final TextEditingController vehicleType = TextEditingController();
  final TextEditingController buildDate = TextEditingController();
  final TextEditingController engine = TextEditingController();
  final TextEditingController firstLicense = TextEditingController();
  final TextEditingController notes = TextEditingController();
  final TextEditingController currency = TextEditingController();
  final TextEditingController primaryCapacity = TextEditingController();
  final TextEditingController secondaryCapacity = TextEditingController();
  final TextEditingController vehicleBuyDate = TextEditingController();
  final TextEditingController vehicleBuyPrice = TextEditingController();
  final TextEditingController vehicleBuyDistance = TextEditingController();
  final TextEditingController vehicleSellDate = TextEditingController();
  final TextEditingController vehicleSellPrice = TextEditingController();
  final TextEditingController vehicleSellDistance = TextEditingController();

  RangeValues seasonLicenseRangeValues = const RangeValues(1.0, 12.0);

  @override
  void initState() {
    super.initState();
  }

  void _onSaveAction(BuildContext context) {
    // Verify textEditingControllers
    bool requiredAreSet = true;

    // Important
    if (make.text.isEmpty) {
      requiredAreSet = false;
    }
    if (modell.text.isEmpty) {
      requiredAreSet = false;
    }
    if (currency.text.isEmpty) {
      requiredAreSet = false;
    }
    if (primaryCapacity.text.isEmpty) {
      requiredAreSet = false;
    }
    if (vehicleBuyDistance.text.isEmpty) {
      requiredAreSet = false;
    }
    // not so important

    Provider.of<VehiclesProvider>(context, listen: false).addVehicle(VehicleCompanion(
      manufacturer: drift.Value(make.text),
      model: drift.Value(modell.text),
      currency: drift.Value(currency.text),
      primaryFuelCapacity: drift.Value(double.parse(primaryCapacity.text)),
    ));
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
                  controller: vehicleType,
                  decoration: const InputDecoration(
                    label: Text('Fahrzeugart'),
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
                  controller: engine,
                  decoration: const InputDecoration(
                    label: Text('Motorisierung'),
                    border: tecBorder,
                  ),
                ),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: firstLicense,
                  decoration: const InputDecoration(
                    label: Text('Erstzulassung'),
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
              const Padding(
                padding: tecEdgeInsets,
                child: Text('Fahrzeugeinheiten'),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: DropdownButtonFormField(
                  items: DistanceUnits.values
                      .map((e) => DropdownMenuItem(
                            value: e.name,
                            child: Text(e.name),
                          ))
                      .toList(),
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    label: Text('Entfernungseinheit'),
                    border: tecBorder,
                  ),
                ),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextFormField(
                  controller: currency,
                  decoration: const InputDecoration(
                    label: Text('Währung'),
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
                            items: FuelUnit.values
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
                  controller: primaryCapacity,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Kapazität'),
                    border: tecBorder,
                  ),
                ),
              ),
              const Padding(
                padding: tecEdgeInsets,
                child: Text('Fahrzeugkauf'),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: vehicleBuyDate,
                  decoration: const InputDecoration(
                    label: Text('Datum'),
                    border: tecBorder,
                  ),
                ),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: vehicleBuyPrice,
                  decoration: const InputDecoration(
                    label: Text('Preis'),
                    border: tecBorder,
                  ),
                ),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: vehicleBuyDistance,
                  decoration: const InputDecoration(
                    label: Text('Kilometerstand'),
                    border: tecBorder,
                  ),
                ),
              ),
              const Padding(
                padding: tecEdgeInsets,
                child: Text('Fahrzeugverkauf'),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: vehicleSellDate,
                  decoration: const InputDecoration(
                    label: Text('Datum'),
                    border: tecBorder,
                  ),
                ),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: vehicleSellPrice,
                  decoration: const InputDecoration(
                    label: Text('Preis'),
                    border: tecBorder,
                  ),
                ),
              ),
              Padding(
                padding: tecEdgeInsets,
                child: TextField(
                  controller: vehicleSellDistance,
                  decoration: const InputDecoration(
                    label: Text('Kilometerstand'),
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
