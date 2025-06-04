function Find-IndexOfCurrentString {
    param (
        [string]$haystack,
        [string] $needle
    )
    $j = 0
    for ($i = 1; $i -lt $haystack.Length; $i++) {
        if ($haystack[$i] -eq $haystack[$j]) {
            if($j -eq $needle.Length)
            {
                $val = $i - $j
                return $val
            }
            $j++;

        }
        else 
        {
            $j = 0;
        }
    }
    return -1
}
# Example usage:
$result = Remove-Duplicates -haystack "sadbutsad" -needle "sad"
Write-Host "Length of resulting array without duplicates: $result"