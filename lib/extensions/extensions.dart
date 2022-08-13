import 'package:flutter/material.dart';

extension BoolParsing on String {
  bool parseBool() {
    return this.toLowerCase() == 'true';
  }
}

extension ColorExtension on Color {
  Color lightenColor() {
    final hsl = HSLColor.fromColor(this);
    final lighter = hsl.withLightness((hsl.lightness + 0.2).clamp(0.0, 1.0));
    return lighter.toColor();
  }
}
