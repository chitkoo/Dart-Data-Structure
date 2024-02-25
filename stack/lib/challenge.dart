import 'package:stack/stack.dart';

///`Challenge 1: Reverse a List`
void reverseList<E>(List<E> list) {
  final stack = Stack();

  for (var element in list) {
    stack.push(element);
  }

  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}

/// Challenge 2: Balance the Parentheses
///
/// Check for balanced parentheses. Given a string, check if there are `(`
/// and `)` characters, and return `true` if the parentheses in the string
/// are balanced. For example:
///
/// h((e))llo(world)()  // balanced parentheses
/// (hello world        // unbalanced parentheses

bool checkBalance(String value) {
  Stack stack = Stack<String>();
  for (var i = 0; i < value.length; i++) {
    final char = value[i];

    if (char == '(') {
      stack.push(char);
    } else if (char == ')') {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
      }
    }
  }

  return stack.isEmpty;
}
