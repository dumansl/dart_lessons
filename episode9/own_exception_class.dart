void main(List<String> args) {
  try {
    Student sule = Student(-5);
  } on AgeException catch (e) {
    print(e.message);
  } finally {
    print("Program bitti");
  }

  try {
    Student eren = Student(-5);
  } catch (e) {
    print(e);
  }
}

class AgeException implements Exception {
  String message;

  AgeException({this.message = "Age Exception"});

  @override
  String toString() {
    return "Hatanın toStrig metodu calıstı";
  }
}

class Student {
  int age = 0;

  Student(this.age) {
    if (age < 0) {
      throw AgeException(message: "AgeException - Yaş negatif olamaz");
    } else
      this.age = age;
  }
}
