void main(List<String> args) {
  List<String> stringList = ["sule", "seckin", "asiye"];
  List<String>? listOfNullableStrings;
  List<String?> listHoldingNullableStrings = ["sule", null, "seckin"];

  print("String listesi $stringList");
  print("null olabilecek liste $listOfNullableStrings");
  print("null olabilecek stringleri tutan liste $listHoldingNullableStrings");
}
