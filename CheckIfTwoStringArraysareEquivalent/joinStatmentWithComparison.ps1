class StringCompare
{
    static [boolean] CheckforStringArray([string[]] $word1, [string[]] $word2)
    {

      return ([String]::Join('',$word1) -eq [String]::Join('',$word2) )
       
    }

    

    
}

$word1 = @("ab", "c")
$word2 = @("a", "bc")
[StringCompare]::CheckforStringArray($word1,$word2)

$word1 = @("a", "cb")
$word2 = @("ab", "c")
[StringCompare]::CheckforStringArray($word1,$word2)

$word1  = @("abc", "d", "defg") 
$word2 = @("abcddefg")
[StringCompare]::CheckforStringArray($word1,$word2)
