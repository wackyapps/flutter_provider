import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vdo/providers/student_provider.dart';

class StudentList extends StatelessWidget {
  const StudentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // StudentProvider studentProvider = Provider.of<StudentProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
      ),
      body: ListView.builder(
            itemCount: 0,
            itemBuilder: (BuildContext context, int index) {
              return Consumer<StudentProvider>(builder: (context, value, child) {
                child: Card(
                  color: Color.fromARGB(255, 215, 243, 250),
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text(
                                          "Name:" +
                                              model.listOfStudents[index].name
                                                  .toString(),
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text("Name:" +
                                            model.listOfStudents[index]
                                                .studentClass),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text(
                                          "Age: " +
                                              model.listOfStudents[index].age
                                                  .toString(),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text("Gender: " +
                                            model.listOfStudents[index].gender
                                                .toString()),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text("Email: " +
                                            model.listOfStudents[index].email
                                                .toString()),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text("Roll no: " +
                                            model.listOfStudents[index].rollNo
                                                .toString()),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.edit,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Icon(
                                        Icons.add,
                                        color: Colors.green,
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
                },
              );
            },
          );
        },
    );
  }
}
