void main(List<String> args) {
  final result = addTheThreeNumbers(first: 1, second: 2, third: 3);
  final result2 = addTheThreeNumbers(
    first: 1,
    second: 2,
  );
  // final result3 = addTheThreeNumbers(); // Hata verir.
}

int addTheThreeNumbers(
    {required int first, required int second, int third = 0}) {
  return first + second + third;
}
