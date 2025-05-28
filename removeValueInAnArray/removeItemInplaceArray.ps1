function Remove-values {
    param (
        [int[]]$nums,
        [int] $val
    )
    $j = 0
    for ($i = 0; $i -lt $nums.Length; $i++) {
        if ($nums[$i] -ne $val) {
            $nums[$j] = $nums[$i]
            $j++
        }
    }
    return $j
}
# Example usage:
$nums = @(3,2,2,3)
$result = Remove-values -nums $nums -val 3
Write-Host "the number of times j was increamented $result"