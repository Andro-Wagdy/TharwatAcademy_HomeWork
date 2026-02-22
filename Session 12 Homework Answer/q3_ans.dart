/*
You are building a mobile app that tracks unique visitors per day.
- Each visitor is identified by an ID (an integer).
- During the day, the app receives many repeated IDs (because the same user may open the app
multiple times).
- You need to count how many unique visitors used the app today.
Write code that, given a list of visitor IDs, returns the number of unique visitors.
*/

void main() {
  print(countUniqueVisitors([1, 3, 3, 3, 3, 6, 8, 9, 7, 7, 5, 5, 9, 14, 9]));
}

int countUniqueVisitors(List<int> visitorsIDs) {
  int count = 0;
  visitorsIDs.toSet().forEach((element) {
    count++;
  });
  return count;
}
