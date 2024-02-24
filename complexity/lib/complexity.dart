void checkFirstName(List<String> names) {
  if (names.isEmpty) print('Empty');

  print(names.first);
}

void printNames(List<String> names) {
  if (names.isEmpty) print('Empty');
  for (int i = 0; i < names.length; i++) {
    print(names[i]);
  }
}

bool naiveSearch(int value, List<int> list) {
  for (var item in list) {
    if (item == value) {
      return true;
    }
  }
  return false;
}

bool betterNaiveSearch(int value, List<int> list) {
  if (list.isEmpty) return false;
  final middleIndex = list.length ~/ 2;
  if (value > list[middleIndex]) {
    for (var i = middleIndex; i < list.length; i++) {
      if (list[i] == value) return true;
    }
  } else {
    for (var i = middleIndex; i >= 0; i--) {
      if (list[i] == value) return true;
    }
  }
  return false;
}

bool betterSearch(int value, List<int> list) {
  int start = 0;
  int end = list.length;

  while (start < end) {
    final size = end - start;
    int middle = start + size ~/ 2;

    if (list[middle] == value) {
      return true;
    } else if (list[middle] < value) {
      start = middle + 1;
    } else {
      end = middle;
    }
  }

  return false;
}

int sumFromOneTo(int n) {
  return n * (n + 1) ~/ 2;
}
