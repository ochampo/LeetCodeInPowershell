

Class Node
{
    $value
    $next

Node()
{
}

Node($value)
{
    $this.value = $value
    $this.next = $null
}

}

class LinkedList {
    $head
    $tail
    $length = 0

    LinkedList()
    {
        
    }
    
    LinkedList([int] $value)
   {
       $node = [Node]::new()
       $this.head = $node
       $this.tail = $node
       $this.length = 1 
    }
    
     [bool] IsEmpty($node)
    {
        if ($this.length -eq 0 -or $null-eq $this.head )
        {
            $this.head = $node
            $this.tail = $node
            $this.length += 1
            return $true
        }

        else
        { 
           return $false
        }
        
    }
    [bool] IsEmpty()
    {
        if ($this.length -eq 0 -or $null-eq $this.head )
        {
            $this.head = $null
            $this.tail = $null
            return $true
        }

        else
        { 
           return $false
        }
        
    }

   

     [psobject] append([int] $value)
     {
        $node = [Node]::new($value)
        $status = $this.IsEmpty($node)    
        if( $status -eq $false)
         {        
        
         $this.tail.next = $node
         $this.tail = $node
         $this.length += 1
         }
        return $node
    }

   [psobject] pop()
    {
        $status = $this.IsEmpty()
        
        if($false-eq $status)
        {
         $temp = $this.head
         $pre = $this.head
         while($temp.next)
         {
            $pre = $temp
            $temp = $temp.next
         }
         $this.tail = $pre 
         $this.tail.next = $null
         $this.length -= 1
         $this.IsEmpty()
         return $temp.value
        } 
        else {
          return $null
        }
        
    }


    [psobject]prePend($value)
    {       
       $node = [Node]::new($value)

       $node = [Node]::new($value)
       $status = $this.IsEmpty($node)    
       if( $status -eq $false)
        {
            $node.next =  $this.head
            $this.head = $node
            $this.length += 1      
        }

        return $node
    }
    [psobject] popFirst()
    {
      if ($this.IsEmpty()) 
      {
         return $this.head
      }
     else 
       {
           ($this.IsEmpty())
           $temp =  $this.head
           $this.head = $this.head.next
           $temp.next = $null
           $this.length -= 1
           $this.IsEmpty()
           return $temp
        
        }
     
    }
     [psobject] get($index)
      {
        if ($index -lt 0 -or $index -ge $this.length)
        {
            $temp = "Out Of range"
            
        }
        else
        {
            $temp = $this.head
            $i=0
            while( $i -lt $index )
            {
            $temp = $temp.next
            $i++
            }

        }
        return $temp 
      }

        
    setValue($index, $value )
    {
        $temp = $this.get($index)
        $temp.value = $value
    }

    [psobject] insert($index, $value)
    {
        if (($index -le 0) -or ($index -gt $this.length))
        {
            Write-Host (" out of bounce " + $this.length)
            return $null
        }
        if($index -eq 0 )
        {
           return $this.prePend($value)
        }
        if($index -eq $this.length )
        {
          return $this.append($value)
        }
        
        $node = [Node]::new($value)
        $temp = $this.get($index -1)
        $node.next = $temp.next
        $temp.next = $node
        $this.length += 1 
        $this.head

        return $node
    }

    [psobject]remove($index)
    {
    $prev = $this.get($index-1)
    $temp = $prev.next
    $prev.next = $temp.next
    $temp.next = $null
    $this.length -= 1
    return $temp
    }
    reverseLinkedList()
    {
     $temp = $this.head
     $this.head = $this.tail 
     $this.tail = $temp
     $after = $temp.next
     $before = $null
     
     for( $i = 0; $i -lt $this.length; $i++) 
     {
         $after  =  $temp.next
         $temp.next = $before 
         $before = $temp
         $temp = $after
             
     }  
        
    }
    PrintList()
    {
        $temp = $this.head
        while( $null -ne $temp.value) 
        {
            Write-Host ($temp.value)
            $temp = $temp.next
        }

        
     }
  
}
class AddTwoNumbers
{
    static [void] TwoNumbers($list1, $list2)
    {
       TempList = [LinkedList]::new(0)
      

    }


}


$list1 = [LinkedList]::new()
$list2 = [LinkedList]::new()

$list1.append(2)
$list1.append(3)
$list1.append(4)
