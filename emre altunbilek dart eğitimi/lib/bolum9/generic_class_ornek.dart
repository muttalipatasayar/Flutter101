import 'my_stack.dart';

void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("muttalip");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(5);

  StringMyStack stringMyStack = StringMyStack();
  stringMyStack.push("muttalip");

  GenericStack genericStack = GenericStack();
  genericStack.push("muttalíp");
  genericStack.push(5);
}
