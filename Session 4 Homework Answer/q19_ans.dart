/*
Write a Dart program that converts a list of names to a set of unique values. Create a map with
counts of occurrences. Compare lengths and print a message if a specific name appears more than
once.
*/

void main() {
  List<String> names = ['Andro', 'Andro', 'Hany', 'Ahmed', 'Ahmed', 'Ahmed'];
  Set<String> uniqueNames = names.toSet();
  Map<String, int> lengths = {
    'listLength': names.length,
    'setLength': uniqueNames.length,
  };
  String specificName = 'Hany';
  Map<String, int> countOfOCcurrancesinList = {};
  names.forEach((name) {
    if (countOfOCcurrancesinList.containsKey(name)) {
      countOfOCcurrancesinList[name] = countOfOCcurrancesinList[name]! + 1;
    } else {
      countOfOCcurrancesinList[name] = 1;
    }
  });
  if (lengths['setLength']! < lengths['listLength']! && countOfOCcurrancesinList[specificName]! > 1) {
      print('$specificName appeared more than once');
    
  } else {
    print('$specificName appeared once');
  }
}
