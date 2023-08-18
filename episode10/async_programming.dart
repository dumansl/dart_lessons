void main(List<String> args) {
  print("Anne cocugu ekmek almaya yollar.");
  longProcess();
  print("Peynir zeytin hazırlanır.");
  print("Kahvaltı hazır.");
}

void longProcess() {
  print("Cocuk ekmek almak için evden çıkar.");
  Future.delayed(Duration(seconds: 10), () {
    print("Cocuk ekmekle ever girer.");
  });
}
