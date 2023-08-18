class Food {
  late final String definition;
  late final int price;

  Food(int price) {
    this.price = price;
  }
  void setDefinition(String definition) {
    this.definition = definition;
  }
}

void main(List<String> args) {
  final myFood = Food(100);
  myFood.setDefinition("et");
  print(myFood.definition);
  print(myFood.price);
}
