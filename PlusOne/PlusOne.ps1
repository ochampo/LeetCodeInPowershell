function Plus-One {
    param (
        [int[]]$nums
    )

    for($i = $nums.Length -1; $i -ge 0; $i--)
    {
        if($nums[$i] -lt 9 )
        {
            $nums[$i]++
            return $nums
        }
        $nums[$i] = 0
    } 
    $result = New-Object int[] ($nums.Length + 1)
    $result[0] = 1 
    return $result

}
# Example usage:
$nums = @(1, 1, 2, 3, 3, 3, 4, 5, 5)
$result = Plus-One -nums $nums
Write-Host "$result"

# Example usage:
$nums = @(8,9,9,9)
$result = Plus-One -nums $nums
Write-Host "$result"

# Example usage:
$nums = @(9)
$result = Plus-One -nums $nums
Write-Host "$result"