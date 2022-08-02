import 'package:flutter/material.dart';

class TireOverViewCard extends StatelessWidget {
  const TireOverViewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO Vielleicht sollten die Reifendiagramme als png oder svg erstellt werden
    return Card(
      child: Stack(
        children: [
          // Tire VL
          Positioned(
            top: 10,
            left: 10,
            child: Column(
              children: [
                const Text('VL'),
                Container(
                  height: 40,
                  width: 20,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          // Tire VR
          Positioned(
            top: 10,
            right: 10,
            child: Column(
              children: [
                const Text('VR'),
                Container(
                  height: 40,
                  width: 20,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          // Tire HL
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              children: [
                const Text('HL'),
                Container(
                  height: 40,
                  width: 20,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          // Tire HR
          Positioned(
            bottom: 10,
            right: 10,
            child: Column(
              children: [
                const Text('HR'),
                Container(
                  height: 40,
                  width: 20,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
