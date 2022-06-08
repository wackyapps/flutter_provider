import 'dart:convert';

import 'package:vdo/models/studentModel.dart';
import 'package:flutter/services.dart' as rootBundle;

class StudentRepository {
//   private list variable
  List<Student> _listOfStudents = [];
  
//   function that will return List<Studen>
  Future<List<Student>> getStudentList() async {
    
//     add student
//     Student _oneStudent = Student(params);
    
    _listOfStudents.add(_oneStudent);

    //     add student
//     Student _twoStudent = Student(params);

    _listOfStudents.add(_twoStudent);
    
    return _listOfStudent;
  }
}
