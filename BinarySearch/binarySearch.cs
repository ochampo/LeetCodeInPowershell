using System.Security.Cryptography.X509Certificates;

public class Solution1 {
    public int Search(int[] nums, int target) {
        int midpoint = nums.Length / 2;
        int start = 0;
        int end = nums.Length - 1;
        Console.WriteLine($"is {nums[midpoint]} > {target}");
        if (nums[midpoint] == target)
            return midpoint;
        if(nums[midpoint] < target)
        {
            Console.WriteLine("we got here");
            start = midpoint;
            for(int i = start; i< nums.Length - 1; i++)
            { 
                start++;
                Console.WriteLine(start);
                if(nums[start] == target)
                {
                    return start;
                }
                

            }
                 
        }
        else 
        {
            end = midpoint;
            for(int i = end; i > 0; i--)
            {   
                end--;
                if(nums[end] == target)
                {
                    return end;
                }
                

            }
        }
        

        return -1;       
    }
}

public class Solution2 {
    public int Search(int[] nums, int target) {
        int midpoint = nums.Length / 2;
        return RecursiveSearch(nums, target, midpoint, 0, nums.Length - 1);
    }

    public int RecursiveSearch(int[] nums, int target, int midpoint, int start, int end) {
     

        if (start > end) return -1;
        if (nums[midpoint] == target) 
        {
        return midpoint;
        }
        //  int[] arr1 = {-1,0,3,5,9,12};
        Console.WriteLine($"is {nums[midpoint]} < {target}");
        if (nums[midpoint] < target)
        {
         start = midpoint + 1;
         midpoint = start + (end - start) / 2;
         return RecursiveSearch(nums, target, midpoint, start, end);
        }
        else 
        {
        end = midpoint - 1;
        midpoint = start + (end - start) / 2;
        return RecursiveSearch(nums, target, midpoint, start, end);
        }
    }
}

public class Program {
    public static void Main(string[] args) {
        Solution1 sol = new Solution1();
        Solution2 sol2 = new Solution2();

        //int[] arr1 = {0,1,3,5,9,12};
        int[] arr1 = {-1,0,3,5,9,12};
        int target = 2;
        var result = sol.Search(arr1, target);
        var result2 = sol2.Search(arr1, target);
        Console.WriteLine("The target is at index " + result2);    
        Console.WriteLine("The target is at index " + result);
    }
}