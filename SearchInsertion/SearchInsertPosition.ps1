function Find-IndexOfCurrentString {
    param (
        [int[]] $nums,
        [int] $target
    )
     [int]$i = 0;
     [int]$j = $nums.Length  - 1
    while($i -le $j)
    {
        $midpoint = ($i + $j) / 2
        if ($nums[$midpoint] -eq $target )
        {
            return midpoint;
        }
        elseif( $target -gt $nums[$midpoint]) 
        {
            $i = $midpoint + 1;

        }
        else 
        {
           $i = $midpoint - 1
        }
        return $i; 


    }
    


}
# Test case 1: Target is in the array
$nums = @(1,2,3,4,5,6,7,8,10)
$result = Find-IndexOfCurrentString -nums $nums -target 7
Write-Host "Index of target: $result"
# Expected output: Index of target: 6
# Test case 2: Target is not in the array
$nums = @(1,2,3,4,5,6,7,8,10)
$result = Find-IndexOfCurrentString -nums $nums -target 9
Write-Host "Index of target: $result"
# Expected output: Index of target: -1 (or an error message)
# Test case 3: Array is empty
$nums = @()
$result = Find-IndexOfCurrentString -nums $nums -target 7
Write-Host "Index of target: $result"
# Expected output: Index of target: -1 (or an error message)
# Test case 4: Target is at the beginning of the array
$nums = @(7,2,3,4,5,6,8,10)
$result = Find-IndexOfCurrentString -nums $nums -target 7
Write-Host "Index of target: $result"
# Expected output: Index of target: 0
# Test case 5: Target is at the end of the array
$nums = @(1,2,3,4,5,6,8,10,7)
$result = Find-IndexOfCurrentString -nums $nums -target 7
Write-Host "Index of target: $result"
# Expected output: Index of target: 8
# Test case 6: Duplicate targets in the array
$nums = @(1,2,3,4,5,6,7,7,8,10)
$result = Find-IndexOfCurrentString -nums $nums -target 7
Write-Host "Index of target: $result"
# Expected output: Index of target: 6 (or the index of the first occurrence)