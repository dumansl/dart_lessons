void main(List<String> args) async {
  print("Program başladı");
  Future.delayed(Duration(seconds: 0), () {
    print("0 saniyelik işlem");
  });
  print("Program bitti");

  Future<int> total = Future(() {
    int total = 0;
    for (int i = 0; i < 1000000000; i++) {
      total = total + i;
    }
    // return total;
    throw Exception("Toplam hesaplanamadı");
  });

  try {
    int forResult = await total;
    print("**** $forResult");
  } catch (e) {
    print(e);
  }

  // total.then((int total) => print(total)).catchError((error) => print(error));

  var f2 = Future.value('emre');
  var f3 = Future.error('Hata ile biten future');

  f3.catchError((error) => print(error));
}
