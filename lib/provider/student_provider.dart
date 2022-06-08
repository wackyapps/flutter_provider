import 'package:flutter/material.dart';

class StudentProvider extends ChangeNotifier {
  int rollno = 1;
  String name = "";
  String className = "";
  int age = 23;
  String gender = "";
  String email = "";
  //get the student name
  
  void getName(String name) {
    getUpdate(name);
    notifyListeners();
  }

  void getUpdate(String name) {
    this.name = name;
    notifyListeners();
  }
}
