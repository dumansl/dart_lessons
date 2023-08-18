void main(List<String> args) async {
  print("İnternetten kisi verisini getirilecek.");
  personRelatedTransactions();
  print("Başka işler yapılacak.");
  print("İşlem bitti.");
}

void personRelatedTransactions() async {
  String person = await fetchContactData();
  print(person.length);
}

Future<String> fetchContactData() {
  return Future<String>.delayed(Duration(seconds: 10), () {
    return "Kisi adı : sule ve id:100";
  });
}
