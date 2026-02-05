/*
Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
*/

void main() {
  print(containsDuplicate([3, 4,6]));

}

bool containsDuplicate(List<int> nums) {
  if (nums.length != nums.toSet().length) {
    return true;
  }
  return false;
}
