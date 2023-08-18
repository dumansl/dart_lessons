import 'dart:math';

class TextGenerator {
  String? text = "sule";
}

class A extends TextGenerator {
  String? get text => super.text;
}

class RandomTextGenerator {
  String? generateExpression() {
    if (Random().nextBool()) {
      return "String expression";
    } else {
      return null;
    }
  }

  int get age => 34;
}

void main(List<String> args) {
  final producer = RandomTextGenerator();
  String? result = producer.generateExpression();
  producer.generateExpression() == null
      ? print("Null deger oldu")
      : printText(result);

  TextGenerator m = TextGenerator();
  String? text = m.text;
  if (text != null) {
    printText(text);
  }
}

void printText(String? generateExpression) {
  print(generateExpression);
}
