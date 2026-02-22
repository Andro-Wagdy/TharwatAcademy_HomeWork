/*
Given an array of integers nums sorted in ascending order, and an integer target, write a function to
search target in nums.
- If target exists, return its index. Otherwise, return -1.
- The algorithm must run in O(log n) time complexity.
*/

void main() {
  print(searchTarget([-1,0,3,5,9,12], 2));
}

int searchTarget(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == target) {
      return i;
    }
  }
  return -1;
}
