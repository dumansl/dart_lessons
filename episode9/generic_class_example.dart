import 'my_stack.dart';

void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("sule");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(5);
  // intMyStack.push("5"); // hata verir.
  StringMyStack stringMyStack = StringMyStack();
  stringMyStack.push("sule");

  GenericStack<String> genericStack = GenericStack();
  genericStack.push("sule");
  // stringMyStack.push(5); // T ye String atadığı için hata verir.
  print(genericStack.pop());
}
