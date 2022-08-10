import 'package:drivebook/models/dbcontroller.dart';
import 'package:flutter/material.dart';

class LogsProvider extends ChangeNotifier {
  List<LogData> _logs = [];

  List<LogData> get getLogs {
    return _logs;
  }

  void addLog(LogData log) {
    _logs.add(log);
    notifyListeners();
  }
}
