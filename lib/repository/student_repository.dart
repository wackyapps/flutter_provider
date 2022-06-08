import 'dart:convert';

import 'package:vdo/models/studentModel.dart';
import 'package:flutter/services.dart' as rootBundle;

class StudentRepository {
  Future<List<Student>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('studentjson/student_data.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => Student.fromJson(e)).toList();
  }
}
