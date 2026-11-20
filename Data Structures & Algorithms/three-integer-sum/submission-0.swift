class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let sorted = nums.sorted()
        var result: [[Int]] = []

        for i in 0..<sorted.count {
            // Fix 1: Prevent index out of bounds
            if i > 0 && sorted[i] == sorted[i - 1] {
                continue
            }

            // Fix 2: Use var
            var left = i + 1
            var right = sorted.count - 1

            while left < right {
                let sum = sorted[left] + sorted[right] + sorted[i]

                if sum < 0 {
                    left += 1
                } else if sum > 0 {
                    right -= 1
                } else {
                    result.append([
                        sorted[i],
                        sorted[left],
                        sorted[right]
                    ])

                    // Fix 3: Move both only after finding a triplet
                    left += 1
                    right -= 1

                    // Skip duplicate left values
                    while left < right &&
                          sorted[left] == sorted[left - 1] {
                        left += 1
                    }

                    // Skip duplicate right values
                    while left < right &&
                          sorted[right] == sorted[right + 1] {
                        right -= 1
                    }
                }
            }
        }

        return result
    }
}
