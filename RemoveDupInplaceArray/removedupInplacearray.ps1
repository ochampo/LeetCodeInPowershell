function Remove-Duplicates {
    param (
        [int[]]$nums
    )
    $j = 1
    for ($i = 1; $i -lt $nums.Length; $i++) {
        if ($nums[$i] -ne $nums[$i - 1]) {
            $nums[$j] = $nums[$i]
            $j++
        }
    }
    return $j
}
# Example usage:
$nums = @(1, 1, 2, 3, 3, 3, 4, 5, 5)
$result = Remove-Duplicates -nums $nums
Write-Host "Length of resulting array without duplicates: $result"