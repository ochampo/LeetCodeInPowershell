class MatchingParentheses
{
    static [bool] IsMatching ([string] $stringOfParentheses)
    {
    $stack = New-Object System.Collections.Generic.Stack[System.Object]
    $myDict = @{}
    $myDict["("] = ")"
    $myDict["{"] = "}"
    $myDict["["] = "]"
    
    $charArray = $stringOfParentheses.ToCharArray()
    foreach($c in $charArray)
    {
        if($c -eq '{' -or $c -eq '(' -or $c -eq '[')
        {
            $stack.Push($c)
        }
        else
        {
            if($stack.Count -eq 0)
            {
                return $false
            }
            else {
                $temp = [string]$stack.Pop()
                $value = ($myDict[$temp])
                if( $value -ne $c)
                {
                    return $false
                }
            }
        }

    }   
    return $stack.Count -eq 0
    }

}

[MatchingParentheses]::IsMatching("{}")
[MatchingParentheses]::IsMatching("{}{}{}{}{}")
[MatchingParentheses]::IsMatching("({[]})")






