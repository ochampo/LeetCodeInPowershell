public class Solution {
    public bool IsAnagramArray(string s, string t) {
        if(s.Length != t.Length)
        {
            return false;
        }

        int[] counts = new int[26];
        for(int i =0; i < s.Length; i++)
        {
            counts[s[i] - 'a']++;
            counts[t[i] - 'a']--; 
        } 
    return counts.All(x => x == 0);

    }

    public bool IsAnagramSort(string s, string t) {
        if(s.Length != t.Length)
        {
            return false;
        }

        char[] sArray = s.ToCharArray();
        char[] tArray = t.ToCharArray();

        Array.Sort(sArray);
        Array.Sort(tArray);

        s = new string(sArray);
        t = new string(tArray);
        return s == t;
    }

    public bool IsAnagramDict(string s, string t) {
        if(s.Length != t.Length)
        {
            return false;
        }

        Dictionary<char, int> charCount = new Dictionary<char, int>();

        foreach(char c in s)
        {
            if(charCount.ContainsKey(c))
            {
                charCount[c]++;
            }
            else
            {
                charCount[c] = 1;
            }
        }

        foreach(char c in t)
        {
            if(!charCount.ContainsKey(c))
            {
                return false;
            }
            charCount[c]--;
            if(charCount[c] < 0)
            {
                return false;
            }
        }

        return true;
    }



}
public class Program {
public static void Main(string[] args) {
    Solution solution = new Solution();
    string s = "anagram";
    string t = "nagaram";

    bool resultArray = solution.IsAnagramArray(s, t);
    Console.WriteLine($"IsAnagramArray: {resultArray}");

    bool resultSort = solution.IsAnagramSort(s, t);
    Console.WriteLine($"IsAnagramSort: {resultSort}");

    bool resultDict = solution.IsAnagramDict(s, t);
    Console.WriteLine($"IsAnagramDict: {resultDict}");
    }
}