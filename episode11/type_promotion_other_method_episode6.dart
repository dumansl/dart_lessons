void main(List<String> args) {
  try {
    print(findCharacterCount(null));
  } catch (e) {
    print(e);
  }
}

int? findCharacterCount(String? text) {
  if (text == null) {
    throw Exception("metin null");
  } else {
    return text.length;
  }
}
