/*
Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
You must implement a solution with a linear runtime complexity and use only constant extra space.
*/

void main() {
  print(singleNumber([2, 2, 3, 3, 8, 8, 5]));
  print(5 ^ 5);
}

int singleNumber(List<int> nums) {
  int single = 0;
  Map<int, int> countrOfOccurences = {};
  for (var n in nums) {
    if (countrOfOccurences.containsKey(n)) {
      countrOfOccurences[n] = countrOfOccurences[n]! + 1;
    } else {
      countrOfOccurences[n] = 1;
    }
  }
  countrOfOccurences.forEach((key, value) {
    if (value == 1) {
      single = key;
    }
  });
  return single;
}
