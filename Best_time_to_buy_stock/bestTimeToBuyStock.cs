
public class Solution {
    public int MaxProfit(int[] prices) {
        int buy = 0; 
        int sell = 0;
        int maxProfit = 0;
        int profit = 0;
        while(sell < prices.Length )
        {
            if(prices[buy] < prices[sell])
            {
                profit = prices[sell] - prices[buy];
                int buying = prices[buy];
                int selling = prices[sell];
                Console.WriteLine($"if we buy at {buying} and we sell at {selling}"); 
                Console.WriteLine($"We get this profit {profit}");
                maxProfit = (profit > maxProfit)? profit: maxProfit;          

            }
            else 
            {
               buy = sell;
            }
        sell++;
        }

        return maxProfit; 
        
    }
}

class Program {
static void Main(string[] args) {
            int[] arr1 = {7,5,5,3,6,4};
            Solution sol = new Solution();
            var maxProfit = sol.MaxProfit(arr1);
            Console.WriteLine("Max Profit is " + maxProfit);
    }

} 