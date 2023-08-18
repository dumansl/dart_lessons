void main(List<String> args) async {
  Map<String, dynamic> incomingUser = await fetchUserById(6);
  List<String> coursesList =
      await fetchCoursesByUsername(incomingUser["username"]);
  String firstComment = await fetchFirstCourseComments(coursesList[0]);
  print(firstComment);
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
