function binarySearchRecursive {
    param (
        [int[]]$nums,
        [int]$target,
        [int]$start,
        [int]$end
    )

    if ($start -gt $end) {
        return -1
    }

    $midpoint = [math]::Floor(($start + $end) / 2)

    if ($nums[$midpoint] -eq $target) {
        return $midpoint
    } elseif ($nums[$midpoint] -lt $target) {
        $midpoint = $start + [math]::Floor(($end - $start) / 2)
        return binarySearchRecursive -nums $nums -target $target -start ($midpoint + 1) -end $end
    } else {
        $midpoint = $start + [math]::Floor(($end - $start) / 2)
        return binarySearchRecursive -nums $nums -target $target -start $start -end ($midpoint - 1)
    }
}


function search {
    param (
        [int[]]$nums,
        [int]$target
    )

    return binarySearchRecursive -nums $nums -target $target -start 0 -end ($nums.Length - 1)
}



# Example usage:
$nums = @(-1,0,3,5,9,12)
$target = -1
$result = search -nums $nums -target $target
Write-Host "The target is at index $result"