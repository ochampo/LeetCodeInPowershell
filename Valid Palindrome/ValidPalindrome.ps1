function Is-Palindrome {
    param (
        [string]$s
    )

    # Remove non-alphanumeric characters and convert to lowercase
    $cleaned = ($s -replace '[^0-9a-zA-Z]', '').ToLower()

    # Initialize pointers
    $left = 0
    $right = $cleaned.Length - 1

    while ($left -lt $right) {
        if ($cleaned[$left] -ne $cleaned[$right]) {
            return $false
        }
        $left++
        $right--
    }

    return $true
}

# Example usage:
$s1 = "racecar"
$s2 = "race a car"
$s3 = "A man, a plan, a canal: Panama"

$result1 = Is-Palindrome -s $s2
Write-Host("Is Palindrome: $s2 -> $result1")
