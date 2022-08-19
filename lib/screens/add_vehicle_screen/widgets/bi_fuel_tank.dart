import 'package:flutter/material.dart';

class BiFuelTanks extends StatefulWidget {
  final TextEditingController tecOne;
  final TextEditingController tecTwo;

  final EdgeInsets tecEdgeInsets = const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0);

  BiFuelTanks({Key? key, required this.tecOne, required this.tecTwo}) : super(key: key);

  @override
  State<BiFuelTanks> createState() => _BiFuelTanksState();
}

class _BiFuelTanksState extends State<BiFuelTanks> {
  final OutlineInputBorder tecBorder = const OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid));

  @override
  Widget build(BuildContext context) {
    const OutlineInputBorder tecBorder = OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid));
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: widget.tecEdgeInsets,
              child: TextField(
                controller: widget.tecOne,
                decoration: const InputDecoration(
                  label: Text('Notizen'),
                  border: tecBorder,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: widget.tecEdgeInsets,
              child: TextField(
                controller: widget.tecTwo,
                decoration: const InputDecoration(
                  label: Text('Notizen'),
                  border: tecBorder,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
