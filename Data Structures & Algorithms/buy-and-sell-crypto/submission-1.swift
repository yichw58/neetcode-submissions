class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var left = 0
        var right = 1
        var maxProfit = 0

        while right < prices.count {
            if prices[right] < prices[left] {
                left = right;
            } else {
                let currentProfit = prices[right] - prices[left]
                maxProfit = max(currentProfit, maxProfit)
            }

            right += 1;

        }

        return maxProfit;
        
    }
}
