void main(List<String> args) {
  fetchUserById(5).then((value) {
    print(value);
    fetchCoursesByUsername(value["username"]).then((List courcesList) {
      print(courcesList);
      String firstCourse = courcesList[0];
      fetchFirstCourseComments(firstCourse).then((String comment) {
        print(comment);
      });
    });
  });
}

Future<String> fetchFirstCourseComments(String courseName) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Kurs mukemmel";
  });
}

Future<List<String>> fetchCoursesByUsername(String username) {
  print("$username kullanıcısının kursları getiriliyor.");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['flutter', 'kotlin', 'javascript'];
  });
}

Future<Map<String, dynamic>> fetchUserById(int id) {
  print("$id id li kullanıcı getiriliyor.");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {"username": 'suleduman', "id": id};
  });
}
