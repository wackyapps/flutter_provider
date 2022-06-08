class Student {
  int? rollno;
  String? name;
  String? className;
  int? age;
  String? gender;
  String? email;

  Student({
    this.rollno,
    this.name,
    this.className,
    this.age,
    this.gender,
    this.email,
  });

  Student.fromJson(Map<String, dynamic> json) {
    rollno = json['rollno'];
    name = json['name'];
    className = json['className'];
    age = json['age'];
    gender = json['gender'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rollno'] = this.rollno;
    data['name'] = this.name;
    data['className'] = this.className;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['email'] = this.email;
    return data;
  }
}
