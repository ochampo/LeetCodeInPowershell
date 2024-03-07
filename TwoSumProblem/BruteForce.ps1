class TwoSum
{
    static [int[]]CheckforTheSumInAnarray([int[]] $ListOfNums, [int] $target)
    {

      $ArrayThatMatchestarget = @()
       for($i=0; $i -lt $ListOfNums.Length; $i++)
       {
        for($j=1; $j -lt $ListOfNums.Length; $j++)
        {
          $potentialTarget =$ListOfNums[$i]  + $ListOfNums[$j]
          write-host("does potential target $potentialTarget  = target: $target")
          if($ListOfNums[$i]  + $ListOfNums[$j] -eq $target )
          {
            $ArrayThatMatchestarget = @($i, $j)
            return $ArrayThatMatchestarget
          }
        }

       }

      return $ArrayThatMatchestarget
    }


}
Write-host("example 1")
$nums = @(2,7,11,15)
$target = 9 

write-host([TwoSum]::CheckforTheSumInAnarray($nums,$target))


Write-host("example 2")
$nums = @(3,2,4)
$target = 5 

write-host([TwoSum]::CheckforTheSumInAnarray($nums,$target))

Write-host("example 3")
$nums = @(1,2,3,4,3)
$target = 7

write-host([TwoSum]::CheckforTheSumInAnarray($nums,$target))


Write-host("example 4")
$nums = @(3,3,4,10,20)
$target = 13 

write-host([TwoSum]::CheckforTheSumInAnarray($nums,$target))