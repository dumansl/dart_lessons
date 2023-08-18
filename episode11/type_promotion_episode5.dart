void main(List<String> args) {
  String? message;

  if (DateTime.now().hour < 12) {
    message = "günaydın";
  } else {
    message = "İyi akşamlar";
  }

  print(message);
  print(message.length);

  Object text = "Bu bir string";

  if (text is String) {
    print(text.length);
  }
}
