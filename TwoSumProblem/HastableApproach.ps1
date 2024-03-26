class TwoSum
{
    static [int[]]CheckforTheSumInAnarray([int[]] $ListOfNums, [int] $target)
    {
        $hashmap = @{}

        return $ListOfNums 
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