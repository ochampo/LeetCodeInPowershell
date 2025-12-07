function get-MaxProfit {
    param (
        [int[]]$Prices
    )

    [int] $buy = 0
    [int] $sell = 1
    [int] $maxProfit = 0
    while ($sell -lt $Prices.Length) {
        if ($Prices[$buy] -lt $Prices[$sell]) {
            $currentProfit = $Prices[$sell] - $Prices[$buy]
            if ($currentProfit -gt $maxProfit) {
                $maxProfit = $currentProfit
            }
        } else {
            $buy = $sell
        }
        $sell++
    }    
    return $maxProfit

}

$prices = @(7,1,5,3,6,4)
$result = get-MaxProfit -Prices $prices
Write-Output "Maximum Profit: $result"