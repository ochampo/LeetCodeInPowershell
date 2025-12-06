
class ListNode {
    [int] $value
    [ListNode] $next

    ListNode([int] $value = 0) {
        $this.value = $value
        $this.next  = $null
    }
}


class Solution {

static [ListNode] mergeTwoList([ListNode] $list1, [ListNode] $list2)
  {
     $dummy =  [ListNode]::new(0)
     $current = $dummy
     while($null -ne $list1 -and $null -ne $list2)
     {
      if($list1.value -lt $list2.value)
      {
        $current.next = $list1;
        $list1 = $list1.next
      }
      else
      {
        $current.next = $list2;
        $list2 = $list2.next
      }
      $current = $current.next

      
     }

     $current.next = ($null -ne $list1) ? $list1 : $list2
     
     return $dummy.next

  }  

 
}


function convertto-LinkedList {
    param (
        [array]$list
    )
   [ListNode] $dummy =  [ListNode]::new(0)
   [ListNode] $current = $dummy
    foreach($item in $list)
    {
      $current.next = [ListNode]::new($item)
      $current = $current.next
    }
    return $dummy.next
}

# Example usage:
$array1 = @( 1, 2, 3)
$array2 = @(1, 2, 3)

$list1 = convertto-LinkedList $array1
$list2 = convertto-LinkedList $array2



 [Solution]::mergeTwoList($list1, $list2)