import 'package:stack/challenge.dart';
import 'package:stack/stack.dart';

void main(List<String> arguments) {
  final stack = Stack();

  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);

  print(stack);

  print('Last ${stack.pop()}');

  const list = ['c', 'h', 'i', 't'];
  final listToStack = Stack.of(list);

  print(listToStack);
  print('Last ${listToStack.pop()}');

  ///`Challenge 1`
  const listToReverse = [1, 2, 3, 4, 5];
  reverseList(listToReverse);

  ///`Challenge 2`
  const str = 'h((e))llo(world)()';
  print(checkBalance(str));
}
