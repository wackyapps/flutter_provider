import 'dart:async';

import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  int temp = 12;

  void UpdateTemp(int temp) {
    this.temp = temp;
    notifyListeners();
  }

  int time = 0;
  void startTime(int time) {
    this.time = time;
    notifyListeners();
  }

  void UpdateTime() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      startTime(timer.tick);

      notifyListeners();
    });
  }

  String name = "Ayaz";
  Future<void> updateName(String name) async {
    this.name = name;
    notifyListeners();
  }

  Future<void> getName(String name) async {
    updateName(name);
    notifyListeners();
  }
}
