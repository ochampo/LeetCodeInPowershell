function get-validAnagramSort {
    param (
        [string]$s,
        [string]$t
    )
    if ($s.Length -ne $t.Length) {
        return $false
    }

    $sArray = $s.ToCharArray()
    $tArray = $t.ToCharArray()

    [array]::Sort($sArray)
    [array]::Sort($tArray)

    $s = -join $sArray
    $t = -join $tArray
    return $s -eq $t
}

function get-validAnagramHashTable {
    param (
        [string]$s,
        [string]$t
    )
    if ($s.Length -ne $t.Length) {
        return $false
    }

    $charCount = @{}

    foreach ($char in $s.ToCharArray()) {
        if ($charCount.ContainsKey($char)) {
            $charCount[$char] += 1
        } else {
            $charCount[$char] = 1
        }
    }

    foreach ($char in $t.ToCharArray()) {
        if (-not $charCount.ContainsKey($char)) {
            return $false
        }
        $charCount[$char] -= 1
        if ($charCount[$char] -lt 0) {
            return $false
        }
    }

    return $true
}

function get-validAnagramChar {
    param (
        [string]$s,
        [string]$t
    )
    if ($s.Length -ne $t.Length) {
        return $false
    }

    $charArray = @(0) * 26
    for($i=0; $i -lt $s.Length; $i++) {
        $charArray[ [int][char]$s[$i] - [int][char]'a' ]++
        $charArray[ [int][char]$t[$i] - [int][char]'a' ]--
    }
       
    

    # If the count of items NOT equal to 0 is 0, then all are 0.
    $areAllZero = @($charArray -ne 0).Count -eq 0
    return $areAllZero
}

# Example usage:
$s = "anagram"
$t = "nagaram"
$resultSort = get-validAnagramSort -s $s -t $t
$resultCount = get-validAnagramHashTable -s $s -t $t
$resultChar = get-validAnagramChar -s $s -t $t
Write-Output "Using Sort Method: $resultSort"
Write-Output "Using Count Method: $resultCount"
Write-Output "Using Char Array Method: $resultChar"