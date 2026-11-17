class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var prefix = [Int](repeating: 1, count: n)
        var suffix = [Int](repeating: 1, count: n)
        var result:[Int] = []

        for i in 1..<n{
            prefix[i] = prefix[i-1] * nums[i-1]
        }

        for i in (0..<(n-1)).reversed(){
            suffix[i] = suffix[i+1] * nums[i+1]
        }

        for i in 0..<n {
            result.append(prefix[i] * suffix[i])
        }

        return result


    }
}
