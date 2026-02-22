/*

*/

void main() {
 print(reverseList(ListNode(3))!.value);
}

class ListNode {
  int value;
  ListNode? next;
  ListNode(this.value);
}

ListNode? reverseList(ListNode? head) {
  ListNode? previous = null;
  ListNode? current = head;

  while (current != null) {
    ListNode? next = current.next;

    current.next = previous;

    previous = current;
    current = next;
  }
  return previous;
}
