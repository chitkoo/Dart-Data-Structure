import 'package:complexity/complexity.dart' as complexity;

void main(List<String> arguments) {
  List<String> names = ['ck', 'ckk', 'ckko', 'chit ko'];

  ///`Constant Time O(1)`
  complexity.checkFirstName(names);
  print('______________');

  ///`Linear Time 0(n)`
  complexity.printNames(names);
  print('______________');

  const numbers = [1, 3, 56, 66, 68, 80, 99, 105, 450];
  print(complexity.naiveSearch(450, numbers));

  print(complexity.betterNaiveSearch(450, numbers));

  ///`Logarithmic Time O(log n)`
  print(complexity.betterSearch(450, numbers));

  print('______________');

  /// `Sum 1 to n`
  print(complexity.sumFromOneTo(100));
}
