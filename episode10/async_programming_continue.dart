void main(List<String> args) {
  print("Anne cocugu ekmek almaya yollar.");
  print("Cocuk ekmek almak için evden çıkar.");
  Future<String> result = longProcess();
  // result.then(((value) => print(value)));
  result.then((value) => print(value)).catchError((error) {
    print(error);
  }).whenComplete(() => print("Ekmek alma operasyonu bitti"));
  print("Peynir zeytin hazırlanır.");
  print("Kahvaltı hazır.");
}

Future<String> longProcess() {
  Future<String> result = Future.delayed(Duration(seconds: 10), () {
    //ya da Future.delayed e return yazabiliriz.
    //return "Cocuk ekmekle ever girer.";
    throw Exception("Bakkalda ekmek kalmamış");
  });

  return result;
}
