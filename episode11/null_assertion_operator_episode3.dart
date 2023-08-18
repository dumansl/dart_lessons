int? canBeNullButNot = 1;
void main(List<String> args) {
  List<int?> listWithNullValue = [2, 3, null];
  int a = canBeNullButNot!;
  int b = listWithNullValue.first!;

  int c = canFreezeNullButWontReturn()!.abs();
}

int? canFreezeNullButWontReturn() {
  return 5;
}
