using System;

public class ListNode {
    public int val;
    public ListNode next;
    public ListNode(int val = 0, ListNode next = null) {
        this.val = val;
        this.next = next;
    }
}

public class Solution {
    public ListNode MergeTwoLists(ListNode list1, ListNode list2) {
        ListNode dummy = new ListNode(0);
        ListNode cur = dummy;

        while (list1 != null && list2 != null) {
            if (list1.val <= list2.val) {
                cur.next = list1;
                list1 = list1.next;
            } else {
                cur.next = list2;
                list2 = list2.next;
            }
            cur = cur.next;
        }
        cur.next = (list1 != null) ? list1 : list2;

        return dummy.next;
    }
}

class Program {
            static ListNode BuildList(int[] values) {
                ListNode dummy = new ListNode(0);
                ListNode current = dummy;
                foreach (int val in values) {
                    current.next = new ListNode(val);
                    current = current.next;
                }
                return dummy.next;
            }

            static void PrintList(ListNode head) {
                while (head != null) {
                    Console.Write(head.val);
                    if (head.next != null) Console.Write(" -> ");
                    head = head.next;
                }
                Console.WriteLine();
    }

    static void Main(string[] args) {
            int[] arr1 = {1, 2, 4};
            int[] arr2 = {1, 3, 4};

            ListNode list1 = BuildList(arr1);
            ListNode list2 = BuildList(arr2);

            Solution sol = new Solution();
            ListNode merged = sol.MergeTwoLists(list1, list2);

            Console.WriteLine("Merged List:");
            PrintList(merged);
    }
}