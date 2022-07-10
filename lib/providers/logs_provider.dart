import 'package:flutter/material.dart';

import '../models/log.dart';

class LogsProvider extends ChangeNotifier {
  List<Log> _logs = [
    Log(1, "Header", "Content"),
  ];

  List<Log> get getLogs {
    return _logs;
  }

  void addLog(Log log) {
    _logs.add(log);
    notifyListeners();
  }
}
