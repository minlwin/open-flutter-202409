class Student {
  final String job;
  final String name;

  const Student(this.name, [this.job = "Student"]);

  const Student.withNoargs() : this("No Name", "Student");

  Student.withName(this.name) : job = "Student";

  Student.withJob(this.job) : name = "No Name";

  Student.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        job = json['job'];

  void greet() {
    print("I am a $job and my name is $name.");
  }
}

class StudentRepository {
  final _students = <Student>[];

  static final _instances = <String, StudentRepository>{};

  get student => [..._students];

  StudentRepository._internal();

  factory StudentRepository.instance(String key) {
    return _instances.putIfAbsent(key, StudentRepository._internal);
  }
}
