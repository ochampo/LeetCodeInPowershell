using System.Text.RegularExpressions;
public class Solution {
    
    public bool IsPalindrome(string s) {
       
        s = Regex.Replace(s, @"[^0-9a-zA-Z]+", "").ToLower();

       Console.WriteLine(s);
       int start = 0;
       int end = s.Length-1;
       // racecar
       while(start < end)
       {
        if(s[start] != s[end])
        {
            return false;
        }
        else 
        {
            start++;
            end--;
        }

       } 
       return true;
        
    }
}

class Program {

static void Main(string[] args) {
            string s1 = "racecar";
            string s2 = "race a car";
            string s3 = "A man, a plan, a canal: Panama";
            Solution sol = new Solution();
            var result1 = sol.IsPalindrome(s1);
            var result2 = sol.IsPalindrome(s2);
            var result3 = sol.IsPalindrome(s3);
            Console.WriteLine($"Is Palindrome: {s1} " + result1);
            Console.WriteLine($"Is Palindrome: {s2} " + result2);
            Console.WriteLine($"Is Palindrome: {s3} " + result3);
    }

} 